# vi:ft=

use Test::Nginx::Socket::Lua;

repeat_each(2);

plan tests => repeat_each() * (1 * blocks());

our $HttpConfig = <<'_EOC_';
    lua_package_path 'lib/?.lua;;';
    lua_package_cpath 'lib/?.so;;';
    resolver 8.8.8.8;
_EOC_

#log_level 'warn';

run_tests();

__DATA__

=== TEST 11: PubRequest
--- http_config eval: $::HttpConfig
--- config
    location /t {
        content_by_lua_block {
            local cjson = require "cjson"
            local acsClient = require "resty.acs.core.AcsClient"
            local PubRequest = require "resty.acs.iot.PubRequest"
            local accessid = ''
            local accesskey = '='
            local region = ''
            local productKey = ''
            local deviceName = ''
            local topicFullName = '/' .. productKey .. '/' .. deviceName .. '/update'

            local client = acsClient:new(region, accessid, accesskey)
            local request = PubRequest:new()
            request:setProductKey(productKey)
            request:setTopicFullName(topicFullName)
            request:setMessageContent('test')
            request:setQos(1)
            

            local response, err = client:getAcsResponse(request)

            if response then
                ngx.say(cjson.encode(response))
            else
                ngx.say(err)
            end
        }
    }
--- request
GET /t
--- response_body
failed to new: bad iv
--- no_error_log
[error]




