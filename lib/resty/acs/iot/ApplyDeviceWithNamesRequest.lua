local rpcAcsRequest = require 'resty.acs.core.RpcAcsRequest'
local setmetatable = setmetatable
local ipairs = ipairs
local tabcat = table.concat

local _M = {}

function _M:new( )
	local base = rpcAcsRequest:new('Iot', '2016-05-30', 'ApplyDeviceWithNames')

	local instance = {
		__base = base
	}

	return setmetatable( instance, {__index = setmetatable(_M, {__index = base}) } )
end

function _M:getDeviceName() 
	return self.deviceName
end

function _M:addDeviceName(deviceName) 
	self.deviceNameCount = self.deviceNameCount or 0

	self.deviceNameCount = self.deviceNameCount + 1

	self:addQueryParameters("DeviceName." .. self.deviceNameCount, deviceName)
end

function _M:getProductKey() 
	return self.productKey
end

function _M:setProductKey(productKey) 
	self.productKey = productKey
	self:addQueryParameters("ProductKey", productKey)
end

return _M