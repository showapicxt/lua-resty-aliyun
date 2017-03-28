local acs_credential = require 'resty.acs.core.auth.credential'
local acs_singer = require 'resty.acs.core.auth.signer'
local acs_endpoints = require 'resty.acs.core.regions.endpoints'
local http = require 'resty.http'
local cjson = require 'cjson.safe'

local strfind = string.find
local strsub = string.sub
local ipairs = ipairs
local pairs = pairs
local type = type
local setmetatable = setmetatable

local re_match = ngx.re.match
local hmac_sha1 = ngx.hmac_sha1
local encode_base64 = ngx.encode_base64
local now = ngx.time
local http_time = ngx.http_time

local log = ngx.log
local DEBUG = ngx.DEBUG
local INFO = ngx.INFO
local ERR = ngx.ERR

local _M = {}

local mt = { __index = _M }

local ok, new_tab = pcall(require, "table.new")
if not ok then
    new_tab = function (narr, nrec) return {} end
end

function _M:new(regionId, accessid, accesskey, connPoolSize, timeout, connectTimeout)

	connPoolSize = connPoolSize or 200
	timeout = timeout or 35000
	connectTimeout = connectTimeout or 35000

	local instance = {
		regionId = regionId,
		accessid = accessid,
		accesskey = accesskey,
		connPoolSize = connPoolSize,
		timeout = timeout,
		connectTimeout = connectTimeout
	}

	return setmetatable( instance, mt )
end

function _M:updateAccessId( accessid, accesskey )
	if not accessid then self.accessid = accessid end
	if not accesskey then self.accesskey = accesskey end
end

function _M:getAcsResponse( request, signer, credential, autoRetry, maxRetryNumber )
	autoRetry = autoRetry or true
	maxRetryNumber = maxRetryNumber or 3
	response = self:doAction(request, signer, credential, autoRetry, maxRetryNumber)
	if response and response.status >= 200 and response.status < 300 then
		--log(DEBUG, response.body)
		return self:parseAcsResponse(response.body, request:getAcceptFormat())	
	else
		log(ERR, 'request failed, status: ', response.status, ' body: ', response.body)
		return nil, response.err
	end
end

function _M:doAction( request, signer, credential, autoRetry, maxRetryNumber )
	if not signer then
		signer = acs_singer:ShaHmac1Signer()
	end

	if not credential then
		credential = acs_credential:new(self.accessid, self.accesskey)
	end

	local regionId = self.regionId
	if not request:getRegionId() then
		request:setRegionId(regionId)
	end

	local product = request:getProduct()
	local domain = acs_endpoints:findProductDomain(regionId, product)
	if not domain then
		log(ERR, 'cannot find endpoint to regionId: ', regionId, ' product: ', product)
		return false
	end

	local requestUrl = request:composeUrl(signer, credential, domain)

	local httpc = http:new()
	httpc:set_timeout(self.connectTimeout)

	local res, err = httpc:request_uri(
			requestUrl, 
			{
				method = request:getMethod(),
				headers = request:getHeader(),
				body = request:getDomainParameters()				
			}
		)

	if not res then
		log(ERR, 'request error, ', err)
		return nil
	end

	local retryTimes = 1
	while res.status >= 500 and autoRetry and retryTimes < maxRetryNumber do
		requestUrl = request:composeUrl(signer, credential, domain)

		res, err = httpc:request_uri(
			requestUrl, 
			{
				method = request:getMethod(),
				headers = request:getHeader(),
				body = request:getDomainParameters()				
			}
		)

		retryTimes = retryTimes + 1
	end

	httpc:set_keepalive(self.timeout, self.connPoolSize)

	return res

end

function _M:parseAcsResponse( body, format )
	if 'JSON' == format then
		return cjson.decode(body)
	elseif 'XML' == format then
		return body   --not support right now
	elseif 'RAW' == format then
		return body
	end
end

return _M