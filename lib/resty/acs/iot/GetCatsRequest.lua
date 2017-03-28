local rpcAcsRequest = require 'resty.acs.core.RpcAcsRequest'
local setmetatable = setmetatable

local _M = {}

function _M:new( )
	local base = rpcAcsRequest:new('Iot', '2016-05-30', 'GetCats')

	local instance = {
		__base = base
	}

	return setmetatable( instance, {__index = setmetatable(_M, {__index = base}) } )
end

function _M:getRootId()
	return self.rootId
end

function _M:setRootId(rootId)
	self.rootId = rootId
	self:addQueryParameters("RootId", rootId)
end
	
return _M