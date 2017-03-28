local rpcAcsRequest = require 'resty.acs.core.RpcAcsRequest'
local setmetatable = setmetatable

local _M = {}

function _M:new( )
	local base = rpcAcsRequest:new('Iot', '2016-05-30', 'QueryApplyStatus')

	local instance = {
		__base = base
	}

	return setmetatable( instance, {__index = setmetatable(_M, {__index = base}) } )
end

function _M:getApplyId()
	return self.applyId
end

function _M:setApplyId(applyId)
	self.applyId = applyId
	self:addQueryParameters("ApplyId", applyId)
end
	
return _M