local rpcAcsRequest = require 'resty.acs.core.RpcAcsRequest'
local setmetatable = setmetatable

local _M = {}

function _M:new( )
	local base = rpcAcsRequest:new('Iot', '2016-05-30', 'DeviceGrant')

	local instance = {
		__base = base
	}

	return setmetatable( instance, {__index = setmetatable(_M, {__index = base}) } )
end

function _M:getProductKey()
	return self.productKey
end

function _M:setProductKey(productKey)
	self.productKey = productKey
	self:addQueryParameters("ProductKey", productKey)
end

function _M:getTopicFullName()
	return self.topicFullName
end

function _M:setTopicFullName(topicFullName)
	self.topicFullName = topicFullName
	self:addQueryParameters("TopicFullName", topicFullName)
end

function _M:getDeviceName()
	return self.deviceName
end

function _M:setDeviceName(deviceName)
	self.deviceName = deviceName
	self:addQueryParameters("DeviceName", deviceName)
end

function _M:getGrantType()
	return self.grantType
end

function _M:setGrantType(grantType)
	self.grantType = grantType
	self:addQueryParameters("GrantType", grantType)
end
	
return _M