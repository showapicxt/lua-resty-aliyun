local rpcAcsRequest = require 'resty.acs.core.RpcAcsRequest'
local setmetatable = setmetatable

local _M = {}

function _M:new( )
	local base = rpcAcsRequest:new('Iot', '2016-05-30', 'QueryDevice')

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

function _M:getPageSize()
	return self.pageSize
end

function _M:setPageSize(pageSize)
	self.pageSize = pageSize
	self:addQueryParameters("PageSize", pageSize)
end

function _M:getCurrentPage()
	return self.currentPage
end

function _M:setCurrentPage(currentPage)
	self.currentPage = currentPage
	self:addQueryParameters("CurrentPage", currentPage)
end
	
return _M