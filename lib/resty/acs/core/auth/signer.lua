local hmac = require 'resty.hmac'
local setmetatable = setmetatable
local base64_encode = ngx.encode_base64
local hmac_sha1 = ngx.hmac_sha1

local _M = {}

function _M:ShaHmac1Signer(  )
	local instance = {
		signMethod = 'HMAC-SHA1',
		version = '1.0'
	}

	return setmetatable( instance, { __index = _M})	
end

function _M:ShaHmac256Signer( )
	local instance = {
		signMethod = 'HMAC-SHA256',
		version = '1.0'
	}	

	return setmetatable( instance, { __index = _M})	
end

function _M:signString( source, accessSecret )
	if (self.signMethod == 'HMAC-SHA1') then
		return base64_encode(hmac_sha1(accessSecret, source))
	elseif (self.signMethod == 'HMAC-SHA256') then
		local hmac_sha256 = hmac:new(accessSecret, hmac.ALGOS.SHA256)
		hmac_sha256:update(source)
		return base64_encode(hmac_sha256:final(_, false))
	else
		return nil
	end
end

function _M:getSignatureMethod( )
	return self.signMethod
end

function _M:getSignatureVersion( )
	return self.version
end

return _M

