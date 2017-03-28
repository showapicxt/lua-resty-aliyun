local rpcAcsRequest = require 'resty.acs.core.RpcAcsRequest'
local setmetatable = setmetatable

local _M = {}

function _M:new( )
	local base = rpcAcsRequest:new('Iot', '2016-05-30', 'QueryPageByApplyId')

	local instance = {
		__base = base
	}

	return setmetatable( instance, {__index = setmetatable(_M, {__index = base}) } )
end

function _M:getCurrenPage()
	return self.currenPage
end

function _M:setCurrenPage(currenPage)
	self.currenPage = currenPage
	self:addQueryParameters("CurrenPage", currenPage)
end

function _M:getPageSize()
	return self.pageSize
end

function _M:setPageSize(pageSize)
	self.pageSize = pageSize
	self:addQueryParameters("PageSize", pageSize)
end

function _M:getApplyId()
	return self.applyId
end

function _M:setApplyId(applyId)
	self.applyId = applyId
	self:addQueryParameters("ApplyId", applyId)
end
	
return _M