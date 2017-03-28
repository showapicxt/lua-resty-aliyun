package.path = package.path .. ';/Users/tomcat/work/TGIOT_Biz/lua-resty-aliyun/lib/resty/acs/core/regions/?.lua;;'
package.cpath = package.cpath .. ';/usr/local/openresty/lualib/?.so;;'

local acs_endpoints = require 'endpoints'

local domain = acs_endpoints:findProductDomain('ap-southeast-1', 'Iot')

print(domain)