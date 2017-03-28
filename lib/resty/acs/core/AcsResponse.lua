
local _M = {}

local mt = { __index = _M }

function _M:new( code, message )
	local instance = {
		code = code,
		message = message
	}

	return setmetatable( instance, mt )
end

function _M:setCode( code )
	self.code = code
end

function _M:getCode( code )
	return self.code
end

function _M:setMessage( message )
	self.message = message
end

function _M:getMessage( )
	return self.message
end


return _M