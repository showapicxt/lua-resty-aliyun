local rpcAcsRequest = require 'resty.acs.core.RpcAcsRequest'
local setmetatable = setmetatable

local _M = {}

function _M:new( )
	local base = rpcAcsRequest:new('Iot', '2016-05-30', 'UpdateProduct')

	local instance = {
		__base = base
	}

	return setmetatable( instance, {__index = setmetatable(_M, {__index = base}) } )
end

function _M:getProductName()
	return self.productName
end

function _M:setProductName(productName)
	self.productName = productName
	self:addQueryParameters("ProductName", productName)
end

function _M:getProductDesc()
	return self.productDesc
end

function _M:setProductDesc(productDesc)
	self.productDesc = productDesc
	self:addQueryParameters("ProductDesc", productDesc)
end

function _M:getExtProps()
	return self.extProps
end

function _M:setExtProps(extProps)
	self.extProps = extProps
	self:addQueryParameters("ExtProps", extProps)
end

function _M:getCatId()
	return self.catId
end

function _M:setCatId(catId)
	self.catId = catId
	self:addQueryParameters("CatId", catId)
end

function _M:getProductKey()
	return self.productKey
end

function _M:setProductKey(productKey)
	self.productKey = productKey
	self:addQueryParameters("ProductKey", productKey)
end
	
return _M