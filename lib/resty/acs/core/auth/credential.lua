local localtime = ngx.time
local setmetatable = setmetatable

local _M = {}

function _M:new( accessKeyId, accessSecret )
	local instance = {
		accessKeyId = accessKeyId,
		accessSecret = accessSecret,
		refreshDate = localtime()
	}

	return setmetatable(instance, {__index = _M})
end

function _M:isExpired()
	if not self.expiredDate then
		return false
	end

	if localtime() > self.expiredDate then
		return false
	end

	return true;
end

function _M:getRefreshDate()
	return self.refreshDate;
end

function _M:getExpiredDate()
	return self.expiredDate;
end

function _M:setExpiredDate(expiredHours)
	if expiredHours>0 then
		self.expiredDate = localtime() + expiredHours * 3600
	end
end

function _M:getAccessKeyId()
	return self.accessKeyId
end

function _M:setAccessKeyId(accessKeyId)
	self.accessKeyId = accessKeyId
end

function _M:getAccessSecret()
	return self.accessSecret
end

function _M:setAccessSecret(accessSecret)
	self.accessSecret = accessSecret
end

return _M