local rpcAcsRequest = require 'resty.acs.core.RpcAcsRequest'
local setmetatable = setmetatable

local _M = {}

function _M:new( )
	local base = rpcAcsRequest:new('Iot', '2016-01-04', 'DeviceRevokeByTopic')

	local instance = {
		__base = base
	}

	return setmetatable( instance, {__index = setmetatable(_M {__index, base}) } )
end