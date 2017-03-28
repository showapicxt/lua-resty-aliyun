local rpcAcsRequest = require 'resty.acs.core.RpcAcsRequest'
local setmetatable = setmetatable

local _M = {}

function _M:new( )
	local base = rpcAcsRequest:new('Iot', '2016-05-30', 'CreateProduct')

	local instance = {
		__base = base
	}

	return setmetatable( instance, {__index = setmetatable(_M, {__index = base}) } )
end

function _M:getName()
		return self.name
end

function _M:setName(name)
	self.name = name
	self:addQueryParameters("Name", name)
end

function _M:getDesc()
	return self.desc
end

function _M:setDesc(desc)
	self.desc = desc
	self:addQueryParameters("Desc", desc)
end

function _M:getCatId()
	return self.catId
end

function _M:setCatId(catId)
	self.catId = catId
	self:addQueryParameters("CatId", catId)
end

function _M:getExtProps()
	return self.extProps
end

function _M:setExtProps(extProps)
	self.extProps = extProps
	self:addQueryParameters("ExtProps", extProps)
end

function _M:getSecurityPolicy()
	return self.securityPolicy
end

function _M:setSecurityPolicy(securityPolicy)
	self.securityPolicy = securityPolicy
	self:addQueryParameters("SecurityPolicy", securityPolicy)
end

return _M