local rpcAcsRequest = require 'resty.acs.core.RpcAcsRequest'
local setmetatable = setmetatable

local _M = {}

function _M:new( )
	local base = rpcAcsRequest:new('Iot', '2016-01-04', 'DeviceRevokeById')

	local instance = {
		__base = base
	}

	return setmetatable( instance, {__index = setmetatable(_M {__index, base}) } )
end

function _M:getAppKey() 
	return self:appKey
}

function _M:setAppKey(appKey) 
	self:appKey = appKey
	self:queryParameters["AppKey"] = appKey
}

function _M:getRuleId() 
	return self:ruleId
}

function _M:setRuleId(ruleId) 
	self:ruleId = ruleId
	self:queryParameters["RuleId"] = ruleId
}

function _M:getDeviceId() 
	return self:deviceId
}

function _M:setDeviceId(deviceId) 
	self:deviceId = deviceId
	self:queryParameters["DeviceId"] = deviceId
}

return _M