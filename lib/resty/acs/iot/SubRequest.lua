local rpcAcsRequest = require 'resty.acs.core.RpcAcsRequest'
local setmetatable = setmetatable

local _M = {}

function _M:new( )
	local base = rpcAcsRequest:new('Iot', '2016-05-30', 'Sub')

	local instance = {
		__base = base
	}

	return setmetatable( instance, {__index = setmetatable(_M, {__index = base}) } )
end

function _M:getTopic()
	return self.topic
end

function _M:setTopic(topic)
	self.topic = topic
	self:addQueryParameters("Topic", topic)
end

function _M:getProductKey()
	return self.productKey
end

function _M:setProductKey(productKey)
	self.productKey = productKey
	self:addQueryParameters("ProductKey", productKey)
end

function _M:getSubCallback()
	return self.subCallback
end

function _M:setSubCallback(subCallback)
	self.subCallback = subCallback
	self:addQueryParameters("SubCallback", subCallback)
end

function _M:getTopicList()
	return self.topicList
end

function _M:setTopicList(topicList)
	self.topicList = topicList
	self:addQueryParameters("TopicList", topicList)
end
	
return _M