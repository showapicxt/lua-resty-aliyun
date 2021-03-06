local rpcAcsRequest = require 'resty.acs.core.RpcAcsRequest'
local setmetatable = setmetatable

local _M = {}

function _M:new( )
	local base = rpcAcsRequest:new('Iot', '2016-05-30', 'RevertRpc')

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

function _M:getDeviceName()
	return self.deviceName
end

function _M:setDeviceName(deviceName)
	self.deviceName = deviceName
	self:addQueryParameters("DeviceName", deviceName)
end

function _M:getRpcContent()
	return self.rpcContent
end

function _M:setRpcContent(rpcContent)
	self.rpcContent = rpcContent
	self:addQueryParameters("RpcContent", rpcContent)
end

function _M:getTimeOut()
	return self.timeOut
end

function _M:setTimeOut(timeOut)
	self.timeOut = timeOut
	self:addQueryParameters("TimeOut", timeOut)
end
	
return _M