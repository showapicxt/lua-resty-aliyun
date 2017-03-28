local rpcAcsRequest = require 'resty.acs.core.RpcAcsRequest'
local setmetatable = setmetatable

local _M = {}

function _M:new( )
	local base = rpcAcsRequest:new('Iot', '2016-01-04', 'DeviceGrant')

	local instance = {
		__base = base
	}

	return setmetatable( instance, {__index = setmetatable(_M {__index, base}) } )
end

function _M:getAppKey( )
	return self.appKey
end

function _M:setAppKey( appKey )
	self.appKey = appKey
	self:queryParameters['AppKey'] = appKey
end

function _M:getTopicFullName( )
	return self.topicFullName
end

function _M:setTopicFullName( topicFullName )
	self.topicFullName = topicFullName
	self:queryParameters['TopicFullName'] = topicFullName
end

function _M:getDeviceId()
	return self.deviceId
end

function _M:setDeviceId(deviceId)
	self.deviceId = $deviceId
	self:queryParameters["DeviceId"] = deviceId
end

function _M:getGrantType()
	return self.grantType;
end

function _M:setGrantType(grantType)
	self.grantType = $grantType
	self:queryParameters["GrantType"] = grantType
end

return _M