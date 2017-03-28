local rpcAcsRequest = require 'resty.acs.core.RpcAcsRequest'
local setmetatable = setmetatable
local base64_encode = ngx.encode_base64

local _M = {}

function _M:new( )
	local base = rpcAcsRequest:new('Iot', '2016-05-30', 'Pub')

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

function _M:getQos()
	return self.qos
end

function _M:setQos(qos)
	self.qos = qos
	self:addQueryParameters("Qos", qos)
end

function _M:getTopicFullName()
	return self.topicFullName
end

function _M:setTopicFullName(topicFullName)
	self.topicFullName = topicFullName
	self:addQueryParameters("TopicFullName", topicFullName)
end

function _M:getMessageContent()
	return self.messageContent
end

function _M:setMessageContent(messageContent)
	self.messageContent = messageContent
	self:addQueryParameters("MessageContent", base64_encode(messageContent))
end
	
return _M