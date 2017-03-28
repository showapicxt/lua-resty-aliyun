local AcsRequest = require 'resty.acs.core.AcsRequest'
local setmetatable = setmetatable
local pairs = pairs
local type = type
local tabcat = table.concat
local tabsort = table.sort
local urlencode = ngx.escape_uri
local sub = ngx.re.sub
local updatetime = ngx.update_time
local now = ngx.now
local utctime = ngx.utctime

local log = ngx.log
local DEBUG = ngx.DEBUG
local INFO = ngx.INFO
local ERR = ngx.ERR

local _M = {}

local function uniqid( )
	updatetime()
	return now() * 1000
end

local function getTimeFormat( )
	local time = utctime()
	local timeformat = sub(time, '[ ]{1}', 'T')
	return timeformat .. 'Z'
end

local function preg_replace( str, pattern, replace )
	while true do
		local loop = sub(str, pattern, replace)
		if not loop or loop == str then
			break
		end

		str = loop
	end

	return str
end

local function percentEncode( str )
	local res = urlencode(str)
	res = preg_replace(res, '[+]', '%20')
	res = preg_replace(res, '[*]', '%2A')
	res = preg_replace(res, '(%7E)', '~')

	return res
end

function _M:new( product, version, actionName )
	local acsRequest = AcsRequest:new(product, version, actionName) 

	acsRequest:setMethod('GET')
	acsRequest:setAcceptFormat('JSON')

	local instance = {
		__parent = acsRequest
	}

	return setmetatable( instance, {__index = setmetatable( _M, { __index = acsRequest }) })
end

local function prepareValue( value )
	if type(value) == 'boolean' then
		if value then
			return 'true'
		else
			return 'false'
		end
	else
		return value
	end
end

function _M:composeUrl( signer, credential, domain )
	local apiParams = {}
	local queryParams = self:getQueryParameters()
	for k, v in pairs(queryParams) do
		apiParams[k] = prepareValue(v)
		--log(DEBUG, k, ' = ', v)
	end

	apiParams["RegionId"] = self:getRegionId()
	apiParams["AccessKeyId"] = credential:getAccessKeyId()
	apiParams["Format"] = self:getAcceptFormat()
	apiParams["SignatureMethod"] = signer:getSignatureMethod()
	apiParams["SignatureVersion"] = signer:getSignatureVersion()
	apiParams["SignatureNonce"] = uniqid()
	apiParams["Timestamp"] = getTimeFormat()
	apiParams["Action"] = self:getActionName()
	apiParams["Version"] = self:getVersion()
	local Signature = self:computeSignature(apiParams, credential:getAccessSecret(), signer)
	apiParams["Signature"] = Signature

	if self:getMethod() == 'POST' then
		local requestUrl = self:getProtocol() .. '://' .. domain .. '/'
		for k,v in pairs(apiParams) do
			self:putDomainParameters(k, v)
		end

		return requestUrl
	else
		local requestUrl = self:getProtocol() .. '://' .. domain .. '/?'
		local params = {}
		local index = 1
		for k,v in pairs(apiParams) do
			params[index] = k .. '=' .. urlencode(v)
			index = index + 1
		end

		requestUrl = requestUrl .. tabcat(params, '&')

		--log(DEBUG, requestUrl)

		return requestUrl
	end
end

function _M:computeSignature( apiParams, accessKeySecret, signer )
	local canonicalizedQuerys =  {}
	local index = 1

	local params_key = {}
	for k, v in pairs(apiParams) do
		params_key[index] = k
		index = index + 1
	end

	tabsort(params_key)

	index = 1
	for _,v in ipairs(params_key) do
		canonicalizedQuerys[index] = percentEncode(v) .. '=' .. percentEncode(apiParams[v])
		index = index + 1
	end

	local canonicalizedQueryString = tabcat(canonicalizedQuerys, '&')

	local stringToSign = self:getMethod() .. '&%2F&' .. percentEncode(canonicalizedQueryString)
	local signature = signer:signString(stringToSign, accessKeySecret .. '&')

	return signature
end

function _M:getDomainParameters( )
	return self.domainParameters
end

function _M:putDomainParameters( key, value )
	self.domainParameters[key] = value

end

return _M