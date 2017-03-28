

local _M = {}

local mt = { __index = _M }

local x_sdk_client_type = 'x-sdk-client'

function _M:new( product, version, actionName )
	local instance = {
		product = product,
		version = version,
		actionName = actionName,
		protocol = 'http',
		headers = { x_sdk_client_type = 'lua-resty/0.0.1'}	
	}

	return setmetatable( instance, mt)
end

function _M:setVersion( version )
	self.version = version
end

function _M:getVersion( )
	return self.version
end

function _M:setProduct( product )
	self.product = product
end

function _M:getProduct( )
	return self.product
end

function _M:setActionName( actionName )
	self.actionName = actionName
end

function _M:getActionName( )
	return self.actionName
end

function _M:setAcceptFormat( acceptFormat )
	self.acceptFormat = acceptFormat
end

function _M:getAcceptFormat( )
	return self.acceptFormat
end

function _M:getQueryParameters(  )
	return self.queryParameters
end

function _M:addQueryParameters( key, value )
	if not self.queryParameters then
		self.queryParameters = {}
	end

	self.queryParameters[key] = value
end

function _M:setMethod( method )
	self.method = method
end

function _M:getMethod( )
	return self.method
end

function _M:setProtocol( protocol )
	self.protocol = protocol
end

function _M:getProtocol( )
	return self.protocol
end

function _M:setRegionId( region )
	self.region = region
end

function _M:getRegionId( )
	return self.region
end

function _M:setContent( content )
	self.content = content
end

function _M:getContent( )
	return self.content
end

function _M:addHeader( key, value )
	self.headers[key] = value
end

function _M:getHeader( key )
	if not key then
		return self.headers
	else
		return self.headers[key]
	end
end

return _M