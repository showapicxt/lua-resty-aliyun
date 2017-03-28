
local cjson = require 'cjson'
local ipairs = ipairs

local _M = {}

local endpoints = cjson.decode([[
{
    "Endpoints": {
        "Endpoint": [
            {
                "name": "jp-fudao-1",
                "RegionIds": {
                    "RegionId": "jp-fudao-1"
                },
                "Products": {
                    "Product": {
                        "ProductName": "Ecs",
                        "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                    }
                }
            },
            {
                "name": "me-east-1",
                "RegionIds": {
                    "RegionId": "me-east-1"
                },
                "Products": {
                    "Product": [
                        {
                            "ProductName": "Rds",
                            "DomainName": "rds.me-east-1.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ecs",
                            "DomainName": "ecs.me-east-1.aliyuncs.com"
                        },
                        {
                            "ProductName": "Vpc",
                            "DomainName": "vpc.me-east-1.aliyuncs.com"
                        },
                        {
                            "ProductName": "Kms",
                            "DomainName": "kms.me-east-1.aliyuncs.com"
                        },
                        {
                            "ProductName": "Cms",
                            "DomainName": "metrics.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Slb",
                            "DomainName": "slb.me-east-1.aliyuncs.com"
                        }
                    ]
                }
            },
            {
                "name": "us-east-1",
                "RegionIds": {
                    "RegionId": "us-east-1"
                },
                "Products": {
                    "Product": [
                        {
                            "ProductName": "CS",
                            "DomainName": "cs.aliyuncs.com"
                        },
                        {
                            "ProductName": "Push",
                            "DomainName": "cloudpush.aliyuncs.com"
                        },
                        {
                            "ProductName": "COS",
                            "DomainName": "cos.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ess",
                            "DomainName": "ess.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ace-ops",
                            "DomainName": "ace-ops.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Billing",
                            "DomainName": "billing.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dqs",
                            "DomainName": "dqs.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dds",
                            "DomainName": "mongodb.aliyuncs.com"
                        },
                        {
                            "ProductName": "Emr",
                            "DomainName": "emr.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sms",
                            "DomainName": "sms.aliyuncs.com"
                        },
                        {
                            "ProductName": "Jaq",
                            "DomainName": "jaq.aliyuncs.com"
                        },
                        {
                            "ProductName": "HPC",
                            "DomainName": "hpc.aliyuncs.com"
                        },
                        {
                            "ProductName": "Kms",
                            "DomainName": "kms.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Location",
                            "DomainName": "location.aliyuncs.com"
                        },
                        {
                            "ProductName": "ChargingService",
                            "DomainName": "chargingservice.aliyuncs.com"
                        },
                        {
                            "ProductName": "Msg",
                            "DomainName": "msg-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Commondriver",
                            "DomainName": "common.driver.aliyuncs.com"
                        },
                        {
                            "ProductName": "R-kvstore",
                            "DomainName": "r-kvstore-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Bss",
                            "DomainName": "bss.aliyuncs.com"
                        },
                        {
                            "ProductName": "Workorder",
                            "DomainName": "workorder.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ocs",
                            "DomainName": "m-kvstore.aliyuncs.com"
                        },
                        {
                            "ProductName": "Yundun",
                            "DomainName": "yundun-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ubsms-inner",
                            "DomainName": "ubsms-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dm",
                            "DomainName": "dm.aliyuncs.com"
                        },
                        {
                            "ProductName": "Green",
                            "DomainName": "green.aliyuncs.com"
                        },
                        {
                            "ProductName": "Risk",
                            "DomainName": "risk-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "oceanbase",
                            "DomainName": "oceanbase.aliyuncs.com"
                        },
                        {
                            "ProductName": "Msc",
                            "DomainName": "msc-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Yundunhsm",
                            "DomainName": "yundunhsm.aliyuncs.com"
                        },
                        {
                            "ProductName": "Iot",
                            "DomainName": "iot.aliyuncs.com"
                        },
                        {
                            "ProductName": "jaq",
                            "DomainName": "jaq.aliyuncs.com"
                        },
                        {
                            "ProductName": "Oms",
                            "DomainName": "oms.aliyuncs.com"
                        },
                        {
                            "ProductName": "live",
                            "DomainName": "live.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ecs",
                            "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ubsms",
                            "DomainName": "ubsms.aliyuncs.com"
                        },
                        {
                            "ProductName": "Vpc",
                            "DomainName": "vpc.aliyuncs.com"
                        },
                        {
                            "ProductName": "Alert",
                            "DomainName": "alert.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ace",
                            "DomainName": "ace.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "AMS",
                            "DomainName": "ams.aliyuncs.com"
                        },
                        {
                            "ProductName": "ROS",
                            "DomainName": "ros.aliyuncs.com"
                        },
                        {
                            "ProductName": "PTS",
                            "DomainName": "pts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Qualitycheck",
                            "DomainName": "qualitycheck.aliyuncs.com"
                        },
                        {
                            "ProductName": "M-kvstore",
                            "DomainName": "m-kvstore.aliyuncs.com"
                        },
                        {
                            "ProductName": "CloudAPI",
                            "DomainName": "apigateway.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "HighDDos",
                            "DomainName": "yd-highddos-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "CmsSiteMonitor",
                            "DomainName": "sitemonitor.aliyuncs.com"
                        },
                        {
                            "ProductName": "Rds",
                            "DomainName": "rds.aliyuncs.com"
                        },
                        {
                            "ProductName": "Mts",
                            "DomainName": "mts.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "BatchCompute",
                            "DomainName": "batchCompute.aliyuncs.com"
                        },
                        {
                            "ProductName": "CF",
                            "DomainName": "cf.aliyuncs.com"
                        },
                        {
                            "ProductName": "Drds",
                            "DomainName": "drds.aliyuncs.com"
                        },
                        {
                            "ProductName": "Acs",
                            "DomainName": "acs.aliyun-inc.com"
                        },
                        {
                            "ProductName": "Httpdns",
                            "DomainName": "httpdns-api.aliyuncs.com"
                        },
                        {
                            "ProductName": "Location-inner",
                            "DomainName": "location-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Aas",
                            "DomainName": "aas.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sts",
                            "DomainName": "sts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dts",
                            "DomainName": "dts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Drc",
                            "DomainName": "drc.aliyuncs.com"
                        },
                        {
                            "ProductName": "Vpc-inner",
                            "DomainName": "vpc-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Cms",
                            "DomainName": "metrics.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Slb",
                            "DomainName": "slb.aliyuncs.com"
                        },
                        {
                            "ProductName": "Crm",
                            "DomainName": "crm-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Domain",
                            "DomainName": "domain.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ots",
                            "DomainName": "ots-pop.aliyuncs.com"
                        },
                        {
                            "ProductName": "Oss",
                            "DomainName": "oss-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ram",
                            "DomainName": "ram.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sales",
                            "DomainName": "sales.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "OssAdmin",
                            "DomainName": "oss-admin.aliyuncs.com"
                        },
                        {
                            "ProductName": "Alidns",
                            "DomainName": "alidns.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ons",
                            "DomainName": "ons.aliyuncs.com"
                        },
                        {
                            "ProductName": "Cdn",
                            "DomainName": "cdn.aliyuncs.com"
                        },
                        {
                            "ProductName": "YundunDdos",
                            "DomainName": "inner-yundun-ddos.cn-hangzhou.aliyuncs.com"
                        }
                    ]
                }
            },
            {
                "name": "ap-northeast-1",
                "RegionIds": {
                    "RegionId": "ap-northeast-1"
                },
                "Products": {
                    "Product": [
                        {
                            "ProductName": "Rds",
                            "DomainName": "rds.ap-northeast-1.aliyuncs.com"
                        },
                        {
                            "ProductName": "Kms",
                            "DomainName": "kms.ap-northeast-1.aliyuncs.com"
                        },
                        {
                            "ProductName": "Vpc",
                            "DomainName": "vpc.ap-northeast-1.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ecs",
                            "DomainName": "ecs.ap-northeast-1.aliyuncs.com"
                        },
                        {
                            "ProductName": "Cms",
                            "DomainName": "metrics.ap-northeast-1.aliyuncs.com"
                        },
                        {
                            "ProductName": "Kvstore",
                            "DomainName": "r-kvstore.ap-northeast-1.aliyuncs.com"
                        },
                        {
                            "ProductName": "Slb",
                            "DomainName": "slb.ap-northeast-1.aliyuncs.com"
                        }
                    ]
                }
            },
            {
                "name": "cn-hangzhou-bj-b01",
                "RegionIds": {
                    "RegionId": "cn-hangzhou-bj-b01"
                },
                "Products": {
                    "Product": {
                        "ProductName": "Ecs",
                        "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                    }
                }
            },
            {
                "name": "cn-hongkong",
                "RegionIds": {
                    "RegionId": "cn-hongkong"
                },
                "Products": {
                    "Product": [
                        {
                            "ProductName": "Push",
                            "DomainName": "cloudpush.aliyuncs.com"
                        },
                        {
                            "ProductName": "COS",
                            "DomainName": "cos.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ons",
                            "DomainName": "ons.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ess",
                            "DomainName": "ess.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ace-ops",
                            "DomainName": "ace-ops.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Billing",
                            "DomainName": "billing.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dqs",
                            "DomainName": "dqs.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dds",
                            "DomainName": "mongodb.aliyuncs.com"
                        },
                        {
                            "ProductName": "Emr",
                            "DomainName": "emr.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sms",
                            "DomainName": "sms.aliyuncs.com"
                        },
                        {
                            "ProductName": "Jaq",
                            "DomainName": "jaq.aliyuncs.com"
                        },
                        {
                            "ProductName": "CS",
                            "DomainName": "cs.aliyuncs.com"
                        },
                        {
                            "ProductName": "Kms",
                            "DomainName": "kms.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Location",
                            "DomainName": "location.aliyuncs.com"
                        },
                        {
                            "ProductName": "Msg",
                            "DomainName": "msg-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "ChargingService",
                            "DomainName": "chargingservice.aliyuncs.com"
                        },
                        {
                            "ProductName": "R-kvstore",
                            "DomainName": "r-kvstore-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Alert",
                            "DomainName": "alert.aliyuncs.com"
                        },
                        {
                            "ProductName": "Msc",
                            "DomainName": "msc-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Drc",
                            "DomainName": "drc.aliyuncs.com"
                        },
                        {
                            "ProductName": "Yundun",
                            "DomainName": "yundun-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ubsms-inner",
                            "DomainName": "ubsms-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ocs",
                            "DomainName": "m-kvstore.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dm",
                            "DomainName": "dm.aliyuncs.com"
                        },
                        {
                            "ProductName": "Risk",
                            "DomainName": "risk-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "oceanbase",
                            "DomainName": "oceanbase.aliyuncs.com"
                        },
                        {
                            "ProductName": "Workorder",
                            "DomainName": "workorder.aliyuncs.com"
                        },
                        {
                            "ProductName": "Yundunhsm",
                            "DomainName": "yundunhsm.aliyuncs.com"
                        },
                        {
                            "ProductName": "Iot",
                            "DomainName": "iot.aliyuncs.com"
                        },
                        {
                            "ProductName": "HPC",
                            "DomainName": "hpc.aliyuncs.com"
                        },
                        {
                            "ProductName": "jaq",
                            "DomainName": "jaq.aliyuncs.com"
                        },
                        {
                            "ProductName": "Oms",
                            "DomainName": "oms.aliyuncs.com"
                        },
                        {
                            "ProductName": "live",
                            "DomainName": "live.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ecs",
                            "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "M-kvstore",
                            "DomainName": "m-kvstore.aliyuncs.com"
                        },
                        {
                            "ProductName": "Vpc",
                            "DomainName": "vpc.aliyuncs.com"
                        },
                        {
                            "ProductName": "BatchCompute",
                            "DomainName": "batchCompute.aliyuncs.com"
                        },
                        {
                            "ProductName": "AMS",
                            "DomainName": "ams.aliyuncs.com"
                        },
                        {
                            "ProductName": "ROS",
                            "DomainName": "ros.aliyuncs.com"
                        },
                        {
                            "ProductName": "PTS",
                            "DomainName": "pts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Qualitycheck",
                            "DomainName": "qualitycheck.aliyuncs.com"
                        },
                        {
                            "ProductName": "Bss",
                            "DomainName": "bss.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ubsms",
                            "DomainName": "ubsms.aliyuncs.com"
                        },
                        {
                            "ProductName": "CloudAPI",
                            "DomainName": "apigateway.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sts",
                            "DomainName": "sts.aliyuncs.com"
                        },
                        {
                            "ProductName": "CmsSiteMonitor",
                            "DomainName": "sitemonitor.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ace",
                            "DomainName": "ace.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Mts",
                            "DomainName": "mts.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Location-inner",
                            "DomainName": "location-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "CF",
                            "DomainName": "cf.aliyuncs.com"
                        },
                        {
                            "ProductName": "Acs",
                            "DomainName": "acs.aliyun-inc.com"
                        },
                        {
                            "ProductName": "Httpdns",
                            "DomainName": "httpdns-api.aliyuncs.com"
                        },
                        {
                            "ProductName": "Green",
                            "DomainName": "green.aliyuncs.com"
                        },
                        {
                            "ProductName": "Aas",
                            "DomainName": "aas.aliyuncs.com"
                        },
                        {
                            "ProductName": "Alidns",
                            "DomainName": "alidns.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dts",
                            "DomainName": "dts.aliyuncs.com"
                        },
                        {
                            "ProductName": "HighDDos",
                            "DomainName": "yd-highddos-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Vpc-inner",
                            "DomainName": "vpc-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Cms",
                            "DomainName": "metrics.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Slb",
                            "DomainName": "slb.aliyuncs.com"
                        },
                        {
                            "ProductName": "Commondriver",
                            "DomainName": "common.driver.aliyuncs.com"
                        },
                        {
                            "ProductName": "Domain",
                            "DomainName": "domain.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ots",
                            "DomainName": "ots-pop.aliyuncs.com"
                        },
                        {
                            "ProductName": "Cdn",
                            "DomainName": "cdn.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ram",
                            "DomainName": "ram.aliyuncs.com"
                        },
                        {
                            "ProductName": "Drds",
                            "DomainName": "drds.aliyuncs.com"
                        },
                        {
                            "ProductName": "Rds",
                            "DomainName": "rds.aliyuncs.com"
                        },
                        {
                            "ProductName": "Crm",
                            "DomainName": "crm-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "OssAdmin",
                            "DomainName": "oss-admin.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sales",
                            "DomainName": "sales.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "YundunDdos",
                            "DomainName": "inner-yundun-ddos.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Oss",
                            "DomainName": "oss-cn-hongkong.aliyuncs.com"
                        }
                    ]
                }
            },
            {
                "name": "cn-beijing-nu16-b01",
                "RegionIds": {
                    "RegionId": "cn-beijing-nu16-b01"
                },
                "Products": {
                    "Product": {
                        "ProductName": "Ecs",
                        "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                    }
                }
            },
            {
                "name": "cn-beijing-am13-c01",
                "RegionIds": {
                    "RegionId": "cn-beijing-am13-c01"
                },
                "Products": {
                    "Product": [
                        {
                            "ProductName": "Ecs",
                            "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Vpc",
                            "DomainName": "vpc.aliyuncs.com"
                        }
                    ]
                }
            },
            {
                "name": "in-west-antgroup-1",
                "RegionIds": {
                    "RegionId": "in-west-antgroup-1"
                },
                "Products": {
                    "Product": {
                        "ProductName": "Ecs",
                        "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                    }
                }
            },
            {
                "name": "cn-guizhou-gov",
                "RegionIds": {
                    "RegionId": "cn-guizhou-gov"
                },
                "Products": {
                    "Product": [
                        {
                            "ProductName": "Ecs",
                            "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Vpc",
                            "DomainName": "vpc.aliyuncs.com"
                        }
                    ]
                }
            },
            {
                "name": "in-west-antgroup-2",
                "RegionIds": {
                    "RegionId": "in-west-antgroup-2"
                },
                "Products": {
                    "Product": {
                        "ProductName": "Ecs",
                        "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                    }
                }
            },
            {
                "name": "cn-qingdao-cm9",
                "RegionIds": {
                    "RegionId": "cn-qingdao-cm9"
                },
                "Products": {
                    "Product": [
                        {
                            "ProductName": "CS",
                            "DomainName": "cs.aliyuncs.com"
                        },
                        {
                            "ProductName": "Risk",
                            "DomainName": "risk-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "COS",
                            "DomainName": "cos.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ess",
                            "DomainName": "ess.aliyuncs.com"
                        },
                        {
                            "ProductName": "Billing",
                            "DomainName": "billing.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dqs",
                            "DomainName": "dqs.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dds",
                            "DomainName": "mongodb.aliyuncs.com"
                        },
                        {
                            "ProductName": "Alidns",
                            "DomainName": "alidns.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sms",
                            "DomainName": "sms.aliyuncs.com"
                        },
                        {
                            "ProductName": "Drds",
                            "DomainName": "drds.aliyuncs.com"
                        },
                        {
                            "ProductName": "HPC",
                            "DomainName": "hpc.aliyuncs.com"
                        },
                        {
                            "ProductName": "Kms",
                            "DomainName": "kms.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Location",
                            "DomainName": "location.aliyuncs.com"
                        },
                        {
                            "ProductName": "Msg",
                            "DomainName": "msg-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "ChargingService",
                            "DomainName": "chargingservice.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ocs",
                            "DomainName": "m-kvstore.aliyuncs.com"
                        },
                        {
                            "ProductName": "Alert",
                            "DomainName": "alert.aliyuncs.com"
                        },
                        {
                            "ProductName": "Msc",
                            "DomainName": "msc-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "HighDDos",
                            "DomainName": "yd-highddos-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "R-kvstore",
                            "DomainName": "r-kvstore-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Yundun",
                            "DomainName": "yundun-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ubsms-inner",
                            "DomainName": "ubsms-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dm",
                            "DomainName": "dm.aliyuncs.com"
                        },
                        {
                            "ProductName": "Green",
                            "DomainName": "green.aliyuncs.com"
                        },
                        {
                            "ProductName": "YundunDdos",
                            "DomainName": "inner-yundun-ddos.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "oceanbase",
                            "DomainName": "oceanbase.aliyuncs.com"
                        },
                        {
                            "ProductName": "Workorder",
                            "DomainName": "workorder.aliyuncs.com"
                        },
                        {
                            "ProductName": "Yundunhsm",
                            "DomainName": "yundunhsm.aliyuncs.com"
                        },
                        {
                            "ProductName": "Iot",
                            "DomainName": "iot.aliyuncs.com"
                        },
                        {
                            "ProductName": "jaq",
                            "DomainName": "jaq.aliyuncs.com"
                        },
                        {
                            "ProductName": "Oms",
                            "DomainName": "oms.aliyuncs.com"
                        },
                        {
                            "ProductName": "live",
                            "DomainName": "live.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ecs",
                            "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ubsms",
                            "DomainName": "ubsms.aliyuncs.com"
                        },
                        {
                            "ProductName": "CmsSiteMonitor",
                            "DomainName": "sitemonitor.aliyuncs.com"
                        },
                        {
                            "ProductName": "AMS",
                            "DomainName": "ams.aliyuncs.com"
                        },
                        {
                            "ProductName": "Crm",
                            "DomainName": "crm-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "PTS",
                            "DomainName": "pts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Qualitycheck",
                            "DomainName": "qualitycheck.aliyuncs.com"
                        },
                        {
                            "ProductName": "Bss",
                            "DomainName": "bss.aliyuncs.com"
                        },
                        {
                            "ProductName": "M-kvstore",
                            "DomainName": "m-kvstore.aliyuncs.com"
                        },
                        {
                            "ProductName": "CloudAPI",
                            "DomainName": "apigateway.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ace",
                            "DomainName": "ace.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Mts",
                            "DomainName": "mts.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "CF",
                            "DomainName": "cf.aliyuncs.com"
                        },
                        {
                            "ProductName": "Httpdns",
                            "DomainName": "httpdns-api.aliyuncs.com"
                        },
                        {
                            "ProductName": "Location-inner",
                            "DomainName": "location-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Aas",
                            "DomainName": "aas.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sts",
                            "DomainName": "sts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dts",
                            "DomainName": "dts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Emr",
                            "DomainName": "emr.aliyuncs.com"
                        },
                        {
                            "ProductName": "Drc",
                            "DomainName": "drc.aliyuncs.com"
                        },
                        {
                            "ProductName": "Push",
                            "DomainName": "cloudpush.aliyuncs.com"
                        },
                        {
                            "ProductName": "Cms",
                            "DomainName": "metrics.aliyuncs.com"
                        },
                        {
                            "ProductName": "Slb",
                            "DomainName": "slb.aliyuncs.com"
                        },
                        {
                            "ProductName": "Commondriver",
                            "DomainName": "common.driver.aliyuncs.com"
                        },
                        {
                            "ProductName": "Domain",
                            "DomainName": "domain.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ots",
                            "DomainName": "ots-pop.aliyuncs.com"
                        },
                        {
                            "ProductName": "ROS",
                            "DomainName": "ros.aliyuncs.com"
                        },
                        {
                            "ProductName": "Oss",
                            "DomainName": "oss-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ram",
                            "DomainName": "ram.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sales",
                            "DomainName": "sales.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Rds",
                            "DomainName": "rds.aliyuncs.com"
                        },
                        {
                            "ProductName": "OssAdmin",
                            "DomainName": "oss-admin.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ons",
                            "DomainName": "ons.aliyuncs.com"
                        },
                        {
                            "ProductName": "Cdn",
                            "DomainName": "cdn.aliyuncs.com"
                        }
                    ]
                }
            },
            {
                "name": "tw-snowcloud-kaohsiung",
                "RegionIds": {
                    "RegionId": "tw-snowcloud-kaohsiung"
                },
                "Products": {
                    "Product": {
                        "ProductName": "Ecs",
                        "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                    }
                }
            },
            {
                "name": "cn-shanghai-finance-1",
                "RegionIds": {
                    "RegionId": "cn-shanghai-finance-1"
                },
                "Products": {
                    "Product": [
                        {
                            "ProductName": "Kms",
                            "DomainName": "kms.cn-shanghai-finance-1.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ecs",
                            "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Vpc",
                            "DomainName": "vpc.aliyuncs.com"
                        },
                        {
                            "ProductName": "Rds",
                            "DomainName": "rds.aliyuncs.com"
                        }
                    ]
                }
            },
            {
                "name": "cn-guizhou",
                "RegionIds": {
                    "RegionId": "cn-guizhou"
                },
                "Products": {
                    "Product": [
                        {
                            "ProductName": "Ecs",
                            "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Vpc",
                            "DomainName": "vpc.aliyuncs.com"
                        }
                    ]
                }
            },
            {
                "name": "cn-qingdao-finance",
                "RegionIds": {
                    "RegionId": "cn-qingdao-finance"
                },
                "Products": {
                    "Product": {
                        "ProductName": "Oss",
                        "DomainName": "oss-cn-qdjbp-a.aliyuncs.com"
                    }
                }
            },
            {
                "name": "cn-beijing-gov-1",
                "RegionIds": {
                    "RegionId": "cn-beijing-gov-1"
                },
                "Products": {
                    "Product": [
                        {
                            "ProductName": "Oss",
                            "DomainName": "oss-cn-haidian-a.aliyuncs.com"
                        },
                        {
                            "ProductName": "Rds",
                            "DomainName": "rds.aliyuncs.com"
                        }
                    ]
                }
            },
            {
                "name": "cn-shanghai",
                "RegionIds": {
                    "RegionId": "cn-shanghai"
                },
                "Products": {
                    "Product": [
                        {
                            "ProductName": "Risk",
                            "DomainName": "risk-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "COS",
                            "DomainName": "cos.aliyuncs.com"
                        },
                        {
                            "ProductName": "HPC",
                            "DomainName": "hpc.aliyuncs.com"
                        },
                        {
                            "ProductName": "Billing",
                            "DomainName": "billing.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dqs",
                            "DomainName": "dqs.aliyuncs.com"
                        },
                        {
                            "ProductName": "Drc",
                            "DomainName": "drc.aliyuncs.com"
                        },
                        {
                            "ProductName": "Alidns",
                            "DomainName": "alidns.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sms",
                            "DomainName": "sms.aliyuncs.com"
                        },
                        {
                            "ProductName": "Drds",
                            "DomainName": "drds.aliyuncs.com"
                        },
                        {
                            "ProductName": "CS",
                            "DomainName": "cs.aliyuncs.com"
                        },
                        {
                            "ProductName": "Kms",
                            "DomainName": "kms.cn-shanghai.aliyuncs.com"
                        },
                        {
                            "ProductName": "Location",
                            "DomainName": "location.aliyuncs.com"
                        },
                        {
                            "ProductName": "Msg",
                            "DomainName": "msg-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "ChargingService",
                            "DomainName": "chargingservice.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ocs",
                            "DomainName": "m-kvstore.aliyuncs.com"
                        },
                        {
                            "ProductName": "Alert",
                            "DomainName": "alert.aliyuncs.com"
                        },
                        {
                            "ProductName": "Msc",
                            "DomainName": "msc-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "R-kvstore",
                            "DomainName": "r-kvstore-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Yundun",
                            "DomainName": "yundun-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ubsms-inner",
                            "DomainName": "ubsms-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dm",
                            "DomainName": "dm.aliyuncs.com"
                        },
                        {
                            "ProductName": "Green",
                            "DomainName": "green.cn-shanghai.aliyuncs.com"
                        },
                        {
                            "ProductName": "Commondriver",
                            "DomainName": "common.driver.aliyuncs.com"
                        },
                        {
                            "ProductName": "oceanbase",
                            "DomainName": "oceanbase.aliyuncs.com"
                        },
                        {
                            "ProductName": "Workorder",
                            "DomainName": "workorder.aliyuncs.com"
                        },
                        {
                            "ProductName": "Yundunhsm",
                            "DomainName": "yundunhsm.aliyuncs.com"
                        },
                        {
                            "ProductName": "Iot",
                            "DomainName": "iot.aliyuncs.com"
                        },
                        {
                            "ProductName": "Bss",
                            "DomainName": "bss.aliyuncs.com"
                        },
                        {
                            "ProductName": "Oms",
                            "DomainName": "oms.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ubsms",
                            "DomainName": "ubsms.aliyuncs.com"
                        },
                        {
                            "ProductName": "live",
                            "DomainName": "live.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ecs",
                            "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ace-ops",
                            "DomainName": "ace-ops.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "CmsSiteMonitor",
                            "DomainName": "sitemonitor.aliyuncs.com"
                        },
                        {
                            "ProductName": "BatchCompute",
                            "DomainName": "batchCompute.aliyuncs.com"
                        },
                        {
                            "ProductName": "AMS",
                            "DomainName": "ams.aliyuncs.com"
                        },
                        {
                            "ProductName": "ROS",
                            "DomainName": "ros.aliyuncs.com"
                        },
                        {
                            "ProductName": "PTS",
                            "DomainName": "pts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Qualitycheck",
                            "DomainName": "qualitycheck.aliyuncs.com"
                        },
                        {
                            "ProductName": "M-kvstore",
                            "DomainName": "m-kvstore.aliyuncs.com"
                        },
                        {
                            "ProductName": "Apigateway",
                            "DomainName": "apigateway.cn-shanghai.aliyuncs.com"
                        },
                        {
                            "ProductName": "CloudAPI",
                            "DomainName": "apigateway.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sts",
                            "DomainName": "sts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Vpc",
                            "DomainName": "vpc.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ace",
                            "DomainName": "ace.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Mts",
                            "DomainName": "mts.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dds",
                            "DomainName": "mongodb.aliyuncs.com"
                        },
                        {
                            "ProductName": "CF",
                            "DomainName": "cf.aliyuncs.com"
                        },
                        {
                            "ProductName": "Acs",
                            "DomainName": "acs.aliyun-inc.com"
                        },
                        {
                            "ProductName": "Httpdns",
                            "DomainName": "httpdns-api.aliyuncs.com"
                        },
                        {
                            "ProductName": "Push",
                            "DomainName": "cloudpush.aliyuncs.com"
                        },
                        {
                            "ProductName": "Location-inner",
                            "DomainName": "location-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Aas",
                            "DomainName": "aas.aliyuncs.com"
                        },
                        {
                            "ProductName": "Emr",
                            "DomainName": "emr.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dts",
                            "DomainName": "dts.aliyuncs.com"
                        },
                        {
                            "ProductName": "HighDDos",
                            "DomainName": "yd-highddos-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Jaq",
                            "DomainName": "jaq.aliyuncs.com"
                        },
                        {
                            "ProductName": "Cms",
                            "DomainName": "metrics.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Slb",
                            "DomainName": "slb.aliyuncs.com"
                        },
                        {
                            "ProductName": "Crm",
                            "DomainName": "crm-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Domain",
                            "DomainName": "domain.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ots",
                            "DomainName": "ots-pop.aliyuncs.com"
                        },
                        {
                            "ProductName": "jaq",
                            "DomainName": "jaq.aliyuncs.com"
                        },
                        {
                            "ProductName": "Cdn",
                            "DomainName": "cdn.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ram",
                            "DomainName": "ram.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sales",
                            "DomainName": "sales.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Vpc-inner",
                            "DomainName": "vpc-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Rds",
                            "DomainName": "rds.aliyuncs.com"
                        },
                        {
                            "ProductName": "OssAdmin",
                            "DomainName": "oss-admin.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ons",
                            "DomainName": "ons.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ess",
                            "DomainName": "ess.aliyuncs.com"
                        },
                        {
                            "ProductName": "Oss",
                            "DomainName": "oss-cn-shanghai.aliyuncs.com"
                        },
                        {
                            "ProductName": "YundunDdos",
                            "DomainName": "inner-yundun-ddos.cn-hangzhou.aliyuncs.com"
                        }
                    ]
                }
            },
            {
                "name": "cn-shenzhen-inner",
                "RegionIds": {
                    "RegionId": "cn-shenzhen-inner"
                },
                "Products": {
                    "Product": [
                        {
                            "ProductName": "Risk",
                            "DomainName": "risk-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "COS",
                            "DomainName": "cos.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ons",
                            "DomainName": "ons.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ess",
                            "DomainName": "ess.aliyuncs.com"
                        },
                        {
                            "ProductName": "Billing",
                            "DomainName": "billing.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dqs",
                            "DomainName": "dqs.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dds",
                            "DomainName": "mongodb.aliyuncs.com"
                        },
                        {
                            "ProductName": "Alidns",
                            "DomainName": "alidns.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sms",
                            "DomainName": "sms.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sales",
                            "DomainName": "sales.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "HPC",
                            "DomainName": "hpc.aliyuncs.com"
                        },
                        {
                            "ProductName": "Kms",
                            "DomainName": "kms.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Location",
                            "DomainName": "location.aliyuncs.com"
                        },
                        {
                            "ProductName": "Msg",
                            "DomainName": "msg-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "ChargingService",
                            "DomainName": "chargingservice.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ocs",
                            "DomainName": "m-kvstore.aliyuncs.com"
                        },
                        {
                            "ProductName": "jaq",
                            "DomainName": "jaq.aliyuncs.com"
                        },
                        {
                            "ProductName": "Msc",
                            "DomainName": "msc-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "HighDDos",
                            "DomainName": "yd-highddos-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "R-kvstore",
                            "DomainName": "r-kvstore-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Bss",
                            "DomainName": "bss.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ubsms-inner",
                            "DomainName": "ubsms-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dm",
                            "DomainName": "dm.aliyuncs.com"
                        },
                        {
                            "ProductName": "Commondriver",
                            "DomainName": "common.driver.aliyuncs.com"
                        },
                        {
                            "ProductName": "oceanbase",
                            "DomainName": "oceanbase.aliyuncs.com"
                        },
                        {
                            "ProductName": "Workorder",
                            "DomainName": "workorder.aliyuncs.com"
                        },
                        {
                            "ProductName": "Yundunhsm",
                            "DomainName": "yundunhsm.aliyuncs.com"
                        },
                        {
                            "ProductName": "Iot",
                            "DomainName": "iot.aliyuncs.com"
                        },
                        {
                            "ProductName": "Alert",
                            "DomainName": "alert.aliyuncs.com"
                        },
                        {
                            "ProductName": "Oms",
                            "DomainName": "oms.aliyuncs.com"
                        },
                        {
                            "ProductName": "live",
                            "DomainName": "live.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ecs",
                            "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ubsms",
                            "DomainName": "ubsms.aliyuncs.com"
                        },
                        {
                            "ProductName": "CmsSiteMonitor",
                            "DomainName": "sitemonitor.aliyuncs.com"
                        },
                        {
                            "ProductName": "AMS",
                            "DomainName": "ams.aliyuncs.com"
                        },
                        {
                            "ProductName": "Crm",
                            "DomainName": "crm-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "PTS",
                            "DomainName": "pts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Qualitycheck",
                            "DomainName": "qualitycheck.aliyuncs.com"
                        },
                        {
                            "ProductName": "M-kvstore",
                            "DomainName": "m-kvstore.aliyuncs.com"
                        },
                        {
                            "ProductName": "CloudAPI",
                            "DomainName": "apigateway.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sts",
                            "DomainName": "sts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ace",
                            "DomainName": "ace.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Mts",
                            "DomainName": "mts.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "CF",
                            "DomainName": "cf.aliyuncs.com"
                        },
                        {
                            "ProductName": "Httpdns",
                            "DomainName": "httpdns-api.aliyuncs.com"
                        },
                        {
                            "ProductName": "Green",
                            "DomainName": "green.aliyuncs.com"
                        },
                        {
                            "ProductName": "Aas",
                            "DomainName": "aas.aliyuncs.com"
                        },
                        {
                            "ProductName": "Emr",
                            "DomainName": "emr.aliyuncs.com"
                        },
                        {
                            "ProductName": "CS",
                            "DomainName": "cs.aliyuncs.com"
                        },
                        {
                            "ProductName": "Drc",
                            "DomainName": "drc.aliyuncs.com"
                        },
                        {
                            "ProductName": "Push",
                            "DomainName": "cloudpush.aliyuncs.com"
                        },
                        {
                            "ProductName": "Cms",
                            "DomainName": "metrics.aliyuncs.com"
                        },
                        {
                            "ProductName": "Slb",
                            "DomainName": "slb.aliyuncs.com"
                        },
                        {
                            "ProductName": "YundunDdos",
                            "DomainName": "inner-yundun-ddos.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dts",
                            "DomainName": "dts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Domain",
                            "DomainName": "domain.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ots",
                            "DomainName": "ots-pop.aliyuncs.com"
                        },
                        {
                            "ProductName": "ROS",
                            "DomainName": "ros.aliyuncs.com"
                        },
                        {
                            "ProductName": "Cdn",
                            "DomainName": "cdn.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ram",
                            "DomainName": "ram.aliyuncs.com"
                        },
                        {
                            "ProductName": "Drds",
                            "DomainName": "drds.aliyuncs.com"
                        },
                        {
                            "ProductName": "Rds",
                            "DomainName": "rds.aliyuncs.com"
                        },
                        {
                            "ProductName": "OssAdmin",
                            "DomainName": "oss-admin.aliyuncs.com"
                        },
                        {
                            "ProductName": "Location-inner",
                            "DomainName": "location-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Yundun",
                            "DomainName": "yundun-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Oss",
                            "DomainName": "oss-cn-hangzhou.aliyuncs.com"
                        }
                    ]
                }
            },
            {
                "name": "cn-fujian",
                "RegionIds": {
                    "RegionId": "cn-fujian"
                },
                "Products": {
                    "Product": [
                        {
                            "ProductName": "Ecs",
                            "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Rds",
                            "DomainName": "rds.aliyuncs.com"
                        }
                    ]
                }
            },
            {
                "name": "in-mumbai-alipay",
                "RegionIds": {
                    "RegionId": "in-mumbai-alipay"
                },
                "Products": {
                    "Product": {
                        "ProductName": "Ecs",
                        "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                    }
                }
            },
            {
                "name": "us-west-1",
                "RegionIds": {
                    "RegionId": "us-west-1"
                },
                "Products": {
                    "Product": [
                        {
                            "ProductName": "CS",
                            "DomainName": "cs.aliyuncs.com"
                        },
                        {
                            "ProductName": "COS",
                            "DomainName": "cos.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ess",
                            "DomainName": "ess.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ace-ops",
                            "DomainName": "ace-ops.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Billing",
                            "DomainName": "billing.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dqs",
                            "DomainName": "dqs.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dds",
                            "DomainName": "mongodb.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sts",
                            "DomainName": "sts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sms",
                            "DomainName": "sms.aliyuncs.com"
                        },
                        {
                            "ProductName": "Jaq",
                            "DomainName": "jaq.aliyuncs.com"
                        },
                        {
                            "ProductName": "Push",
                            "DomainName": "cloudpush.aliyuncs.com"
                        },
                        {
                            "ProductName": "Alidns",
                            "DomainName": "alidns.aliyuncs.com"
                        },
                        {
                            "ProductName": "Kms",
                            "DomainName": "kms.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Location",
                            "DomainName": "location.aliyuncs.com"
                        },
                        {
                            "ProductName": "Msg",
                            "DomainName": "msg-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "ChargingService",
                            "DomainName": "chargingservice.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ocs",
                            "DomainName": "m-kvstore.aliyuncs.com"
                        },
                        {
                            "ProductName": "Bss",
                            "DomainName": "bss.aliyuncs.com"
                        },
                        {
                            "ProductName": "Msc",
                            "DomainName": "msc-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "R-kvstore",
                            "DomainName": "r-kvstore-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Yundun",
                            "DomainName": "yundun-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ubsms-inner",
                            "DomainName": "ubsms-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dm",
                            "DomainName": "dm.aliyuncs.com"
                        },
                        {
                            "ProductName": "Green",
                            "DomainName": "green.aliyuncs.com"
                        },
                        {
                            "ProductName": "Risk",
                            "DomainName": "risk-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "oceanbase",
                            "DomainName": "oceanbase.aliyuncs.com"
                        },
                        {
                            "ProductName": "Workorder",
                            "DomainName": "workorder.aliyuncs.com"
                        },
                        {
                            "ProductName": "Yundunhsm",
                            "DomainName": "yundunhsm.aliyuncs.com"
                        },
                        {
                            "ProductName": "Iot",
                            "DomainName": "iot.aliyuncs.com"
                        },
                        {
                            "ProductName": "Alert",
                            "DomainName": "alert.aliyuncs.com"
                        },
                        {
                            "ProductName": "Oms",
                            "DomainName": "oms.aliyuncs.com"
                        },
                        {
                            "ProductName": "live",
                            "DomainName": "live.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ecs",
                            "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "M-kvstore",
                            "DomainName": "m-kvstore.aliyuncs.com"
                        },
                        {
                            "ProductName": "Vpc",
                            "DomainName": "vpc.aliyuncs.com"
                        },
                        {
                            "ProductName": "BatchCompute",
                            "DomainName": "batchCompute.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ace",
                            "DomainName": "ace.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "AMS",
                            "DomainName": "ams.aliyuncs.com"
                        },
                        {
                            "ProductName": "ROS",
                            "DomainName": "ros.aliyuncs.com"
                        },
                        {
                            "ProductName": "PTS",
                            "DomainName": "pts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Qualitycheck",
                            "DomainName": "qualitycheck.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ubsms",
                            "DomainName": "ubsms.aliyuncs.com"
                        },
                        {
                            "ProductName": "CloudAPI",
                            "DomainName": "apigateway.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "HighDDos",
                            "DomainName": "yd-highddos-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "CmsSiteMonitor",
                            "DomainName": "sitemonitor.aliyuncs.com"
                        },
                        {
                            "ProductName": "Rds",
                            "DomainName": "rds.aliyuncs.com"
                        },
                        {
                            "ProductName": "Mts",
                            "DomainName": "mts.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "CF",
                            "DomainName": "cf.aliyuncs.com"
                        },
                        {
                            "ProductName": "Acs",
                            "DomainName": "acs.aliyun-inc.com"
                        },
                        {
                            "ProductName": "Httpdns",
                            "DomainName": "httpdns-api.aliyuncs.com"
                        },
                        {
                            "ProductName": "Location-inner",
                            "DomainName": "location-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Aas",
                            "DomainName": "aas.aliyuncs.com"
                        },
                        {
                            "ProductName": "Emr",
                            "DomainName": "emr.aliyuncs.com"
                        },
                        {
                            "ProductName": "HPC",
                            "DomainName": "hpc.aliyuncs.com"
                        },
                        {
                            "ProductName": "Drc",
                            "DomainName": "drc.aliyuncs.com"
                        },
                        {
                            "ProductName": "Vpc-inner",
                            "DomainName": "vpc-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Cms",
                            "DomainName": "metrics.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Slb",
                            "DomainName": "slb.aliyuncs.com"
                        },
                        {
                            "ProductName": "Crm",
                            "DomainName": "crm-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dts",
                            "DomainName": "dts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Domain",
                            "DomainName": "domain.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ots",
                            "DomainName": "ots-pop.aliyuncs.com"
                        },
                        {
                            "ProductName": "Commondriver",
                            "DomainName": "common.driver.aliyuncs.com"
                        },
                        {
                            "ProductName": "jaq",
                            "DomainName": "jaq.aliyuncs.com"
                        },
                        {
                            "ProductName": "Cdn",
                            "DomainName": "cdn.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ram",
                            "DomainName": "ram.aliyuncs.com"
                        },
                        {
                            "ProductName": "Drds",
                            "DomainName": "drds.aliyuncs.com"
                        },
                        {
                            "ProductName": "OssAdmin",
                            "DomainName": "oss-admin.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sales",
                            "DomainName": "sales.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ons",
                            "DomainName": "ons.aliyuncs.com"
                        },
                        {
                            "ProductName": "Oss",
                            "DomainName": "oss-us-west-1.aliyuncs.com"
                        },
                        {
                            "ProductName": "YundunDdos",
                            "DomainName": "inner-yundun-ddos.cn-hangzhou.aliyuncs.com"
                        }
                    ]
                }
            },
            {
                "name": "cn-shanghai-inner",
                "RegionIds": {
                    "RegionId": "cn-shanghai-inner"
                },
                "Products": {
                    "Product": [
                        {
                            "ProductName": "CS",
                            "DomainName": "cs.aliyuncs.com"
                        },
                        {
                            "ProductName": "COS",
                            "DomainName": "cos.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ess",
                            "DomainName": "ess.aliyuncs.com"
                        },
                        {
                            "ProductName": "Billing",
                            "DomainName": "billing.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dqs",
                            "DomainName": "dqs.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dds",
                            "DomainName": "mongodb.aliyuncs.com"
                        },
                        {
                            "ProductName": "Emr",
                            "DomainName": "emr.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sms",
                            "DomainName": "sms.aliyuncs.com"
                        },
                        {
                            "ProductName": "Drds",
                            "DomainName": "drds.aliyuncs.com"
                        },
                        {
                            "ProductName": "HPC",
                            "DomainName": "hpc.aliyuncs.com"
                        },
                        {
                            "ProductName": "Kms",
                            "DomainName": "kms.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Location",
                            "DomainName": "location.aliyuncs.com"
                        },
                        {
                            "ProductName": "ChargingService",
                            "DomainName": "chargingservice.aliyuncs.com"
                        },
                        {
                            "ProductName": "Msg",
                            "DomainName": "msg-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Commondriver",
                            "DomainName": "common.driver.aliyuncs.com"
                        },
                        {
                            "ProductName": "R-kvstore",
                            "DomainName": "r-kvstore-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "jaq",
                            "DomainName": "jaq.aliyuncs.com"
                        },
                        {
                            "ProductName": "Msc",
                            "DomainName": "msc-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ocs",
                            "DomainName": "m-kvstore.aliyuncs.com"
                        },
                        {
                            "ProductName": "Yundun",
                            "DomainName": "yundun-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ubsms-inner",
                            "DomainName": "ubsms-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dm",
                            "DomainName": "dm.aliyuncs.com"
                        },
                        {
                            "ProductName": "Green",
                            "DomainName": "green.aliyuncs.com"
                        },
                        {
                            "ProductName": "Risk",
                            "DomainName": "risk-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "oceanbase",
                            "DomainName": "oceanbase.aliyuncs.com"
                        },
                        {
                            "ProductName": "Workorder",
                            "DomainName": "workorder.aliyuncs.com"
                        },
                        {
                            "ProductName": "Yundunhsm",
                            "DomainName": "yundunhsm.aliyuncs.com"
                        },
                        {
                            "ProductName": "Iot",
                            "DomainName": "iot.aliyuncs.com"
                        },
                        {
                            "ProductName": "Bss",
                            "DomainName": "bss.aliyuncs.com"
                        },
                        {
                            "ProductName": "Oms",
                            "DomainName": "oms.aliyuncs.com"
                        },
                        {
                            "ProductName": "live",
                            "DomainName": "live.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ecs",
                            "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "M-kvstore",
                            "DomainName": "m-kvstore.aliyuncs.com"
                        },
                        {
                            "ProductName": "CmsSiteMonitor",
                            "DomainName": "sitemonitor.aliyuncs.com"
                        },
                        {
                            "ProductName": "Alert",
                            "DomainName": "alert.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ace",
                            "DomainName": "ace.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "AMS",
                            "DomainName": "ams.aliyuncs.com"
                        },
                        {
                            "ProductName": "ROS",
                            "DomainName": "ros.aliyuncs.com"
                        },
                        {
                            "ProductName": "PTS",
                            "DomainName": "pts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Qualitycheck",
                            "DomainName": "qualitycheck.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ubsms",
                            "DomainName": "ubsms.aliyuncs.com"
                        },
                        {
                            "ProductName": "CloudAPI",
                            "DomainName": "apigateway.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "HighDDos",
                            "DomainName": "yd-highddos-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Rds",
                            "DomainName": "rds.aliyuncs.com"
                        },
                        {
                            "ProductName": "Mts",
                            "DomainName": "mts.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "CF",
                            "DomainName": "cf.aliyuncs.com"
                        },
                        {
                            "ProductName": "Httpdns",
                            "DomainName": "httpdns-api.aliyuncs.com"
                        },
                        {
                            "ProductName": "Location-inner",
                            "DomainName": "location-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Aas",
                            "DomainName": "aas.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sts",
                            "DomainName": "sts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dts",
                            "DomainName": "dts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Drc",
                            "DomainName": "drc.aliyuncs.com"
                        },
                        {
                            "ProductName": "Push",
                            "DomainName": "cloudpush.aliyuncs.com"
                        },
                        {
                            "ProductName": "Cms",
                            "DomainName": "metrics.aliyuncs.com"
                        },
                        {
                            "ProductName": "Slb",
                            "DomainName": "slb.aliyuncs.com"
                        },
                        {
                            "ProductName": "YundunDdos",
                            "DomainName": "inner-yundun-ddos.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Domain",
                            "DomainName": "domain.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ots",
                            "DomainName": "ots-pop.aliyuncs.com"
                        },
                        {
                            "ProductName": "Oss",
                            "DomainName": "oss-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ram",
                            "DomainName": "ram.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sales",
                            "DomainName": "sales.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Crm",
                            "DomainName": "crm-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "OssAdmin",
                            "DomainName": "oss-admin.aliyuncs.com"
                        },
                        {
                            "ProductName": "Alidns",
                            "DomainName": "alidns.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ons",
                            "DomainName": "ons.aliyuncs.com"
                        },
                        {
                            "ProductName": "Cdn",
                            "DomainName": "cdn.aliyuncs.com"
                        }
                    ]
                }
            },
            {
                "name": "cn-anhui-gov-1",
                "RegionIds": {
                    "RegionId": "cn-anhui-gov-1"
                },
                "Products": {
                    "Product": {
                        "ProductName": "Ecs",
                        "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                    }
                }
            },
            {
                "name": "cn-hangzhou-finance",
                "RegionIds": {
                    "RegionId": "cn-hangzhou-finance"
                },
                "Products": {
                    "Product": {
                        "ProductName": "Oss",
                        "DomainName": "oss-cn-hzjbp-b-console.aliyuncs.com"
                    }
                }
            },
            {
                "name": "cn-hangzhou",
                "RegionIds": {
                    "RegionId": "cn-hangzhou"
                },
                "Products": {
                    "Product": [
                        {
                            "ProductName": "CS",
                            "DomainName": "cs.aliyuncs.com"
                        },
                        {
                            "ProductName": "COS",
                            "DomainName": "cos.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ess",
                            "DomainName": "ess.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ace-ops",
                            "DomainName": "ace-ops.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Billing",
                            "DomainName": "billing.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dqs",
                            "DomainName": "dqs.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dds",
                            "DomainName": "mongodb.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sts",
                            "DomainName": "sts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sms",
                            "DomainName": "sms.aliyuncs.com"
                        },
                        {
                            "ProductName": "Msg",
                            "DomainName": "msg-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Jaq",
                            "DomainName": "jaq.aliyuncs.com"
                        },
                        {
                            "ProductName": "Push",
                            "DomainName": "cloudpush.aliyuncs.com"
                        },
                        {
                            "ProductName": "Live",
                            "DomainName": "live.aliyuncs.com"
                        },
                        {
                            "ProductName": "Kms",
                            "DomainName": "kms.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Location",
                            "DomainName": "location.aliyuncs.com"
                        },
                        {
                            "ProductName": "Hpc",
                            "DomainName": "hpc.aliyuncs.com"
                        },
                        {
                            "ProductName": "ChargingService",
                            "DomainName": "chargingservice.aliyuncs.com"
                        },
                        {
                            "ProductName": "R-kvstore",
                            "DomainName": "r-kvstore-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Alert",
                            "DomainName": "alert.aliyuncs.com"
                        },
                        {
                            "ProductName": "Msc",
                            "DomainName": "msc-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Drc",
                            "DomainName": "drc.aliyuncs.com"
                        },
                        {
                            "ProductName": "Yundun",
                            "DomainName": "yundun-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ubsms-inner",
                            "DomainName": "ubsms-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ocs",
                            "DomainName": "m-kvstore.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dm",
                            "DomainName": "dm.aliyuncs.com"
                        },
                        {
                            "ProductName": "Green",
                            "DomainName": "green.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Commondriver",
                            "DomainName": "common.driver.aliyuncs.com"
                        },
                        {
                            "ProductName": "oceanbase",
                            "DomainName": "oceanbase.aliyuncs.com"
                        },
                        {
                            "ProductName": "Workorder",
                            "DomainName": "workorder.aliyuncs.com"
                        },
                        {
                            "ProductName": "Yundunhsm",
                            "DomainName": "yundunhsm.aliyuncs.com"
                        },
                        {
                            "ProductName": "Iot",
                            "DomainName": "iot.aliyuncs.com"
                        },
                        {
                            "ProductName": "jaq",
                            "DomainName": "jaq.aliyuncs.com"
                        },
                        {
                            "ProductName": "Oms",
                            "DomainName": "oms.aliyuncs.com"
                        },
                        {
                            "ProductName": "live",
                            "DomainName": "live.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ecs",
                            "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "M-kvstore",
                            "DomainName": "m-kvstore.aliyuncs.com"
                        },
                        {
                            "ProductName": "Vpc",
                            "DomainName": "vpc.aliyuncs.com"
                        },
                        {
                            "ProductName": "BatchCompute",
                            "DomainName": "batchCompute.aliyuncs.com"
                        },
                        {
                            "ProductName": "Domain",
                            "DomainName": "domain.aliyuncs.com"
                        },
                        {
                            "ProductName": "AMS",
                            "DomainName": "ams.aliyuncs.com"
                        },
                        {
                            "ProductName": "ROS",
                            "DomainName": "ros.aliyuncs.com"
                        },
                        {
                            "ProductName": "PTS",
                            "DomainName": "pts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Qualitycheck",
                            "DomainName": "qualitycheck.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ubsms",
                            "DomainName": "ubsms.aliyuncs.com"
                        },
                        {
                            "ProductName": "Apigateway",
                            "DomainName": "apigateway.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "CloudAPI",
                            "DomainName": "apigateway.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "CmsSiteMonitor",
                            "DomainName": "sitemonitor.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ace",
                            "DomainName": "ace.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Mts",
                            "DomainName": "mts.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Oas",
                            "DomainName": "cn-hangzhou.oas.aliyuncs.com"
                        },
                        {
                            "ProductName": "CF",
                            "DomainName": "cf.aliyuncs.com"
                        },
                        {
                            "ProductName": "Acs",
                            "DomainName": "acs.aliyun-inc.com"
                        },
                        {
                            "ProductName": "Httpdns",
                            "DomainName": "httpdns-api.aliyuncs.com"
                        },
                        {
                            "ProductName": "Location-inner",
                            "DomainName": "location-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Aas",
                            "DomainName": "aas.aliyuncs.com"
                        },
                        {
                            "ProductName": "Alidns",
                            "DomainName": "alidns.aliyuncs.com"
                        },
                        {
                            "ProductName": "HPC",
                            "DomainName": "hpc.aliyuncs.com"
                        },
                        {
                            "ProductName": "Emr",
                            "DomainName": "emr.aliyuncs.com"
                        },
                        {
                            "ProductName": "HighDDos",
                            "DomainName": "yd-highddos-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Vpc-inner",
                            "DomainName": "vpc-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Cms",
                            "DomainName": "metrics.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Slb",
                            "DomainName": "slb.aliyuncs.com"
                        },
                        {
                            "ProductName": "Risk",
                            "DomainName": "risk-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dts",
                            "DomainName": "dts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Bss",
                            "DomainName": "bss.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ots",
                            "DomainName": "ots-pop.aliyuncs.com"
                        },
                        {
                            "ProductName": "Cdn",
                            "DomainName": "cdn.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ram",
                            "DomainName": "ram.aliyuncs.com"
                        },
                        {
                            "ProductName": "Drds",
                            "DomainName": "drds.aliyuncs.com"
                        },
                        {
                            "ProductName": "Rds",
                            "DomainName": "rds.aliyuncs.com"
                        },
                        {
                            "ProductName": "Crm",
                            "DomainName": "crm-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "OssAdmin",
                            "DomainName": "oss-admin.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sales",
                            "DomainName": "sales.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ons",
                            "DomainName": "ons.aliyuncs.com"
                        },
                        {
                            "ProductName": "Oss",
                            "DomainName": "oss-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "YundunDdos",
                            "DomainName": "inner-yundun-ddos.cn-hangzhou.aliyuncs.com"
                        }
                    ]
                }
            },
            {
                "name": "cn-beijing-inner",
                "RegionIds": {
                    "RegionId": "cn-beijing-inner"
                },
                "Products": {
                    "Product": [
                        {
                            "ProductName": "Risk",
                            "DomainName": "risk-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "COS",
                            "DomainName": "cos.aliyuncs.com"
                        },
                        {
                            "ProductName": "HPC",
                            "DomainName": "hpc.aliyuncs.com"
                        },
                        {
                            "ProductName": "Billing",
                            "DomainName": "billing.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dqs",
                            "DomainName": "dqs.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dds",
                            "DomainName": "mongodb.aliyuncs.com"
                        },
                        {
                            "ProductName": "Emr",
                            "DomainName": "emr.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sms",
                            "DomainName": "sms.aliyuncs.com"
                        },
                        {
                            "ProductName": "Drds",
                            "DomainName": "drds.aliyuncs.com"
                        },
                        {
                            "ProductName": "CS",
                            "DomainName": "cs.aliyuncs.com"
                        },
                        {
                            "ProductName": "Kms",
                            "DomainName": "kms.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Location",
                            "DomainName": "location.aliyuncs.com"
                        },
                        {
                            "ProductName": "ChargingService",
                            "DomainName": "chargingservice.aliyuncs.com"
                        },
                        {
                            "ProductName": "Msg",
                            "DomainName": "msg-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ess",
                            "DomainName": "ess.aliyuncs.com"
                        },
                        {
                            "ProductName": "R-kvstore",
                            "DomainName": "r-kvstore-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Bss",
                            "DomainName": "bss.aliyuncs.com"
                        },
                        {
                            "ProductName": "Workorder",
                            "DomainName": "workorder.aliyuncs.com"
                        },
                        {
                            "ProductName": "Drc",
                            "DomainName": "drc.aliyuncs.com"
                        },
                        {
                            "ProductName": "Yundun",
                            "DomainName": "yundun-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ubsms-inner",
                            "DomainName": "ubsms-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ocs",
                            "DomainName": "m-kvstore.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dm",
                            "DomainName": "dm.aliyuncs.com"
                        },
                        {
                            "ProductName": "YundunDdos",
                            "DomainName": "inner-yundun-ddos.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "oceanbase",
                            "DomainName": "oceanbase.aliyuncs.com"
                        },
                        {
                            "ProductName": "Msc",
                            "DomainName": "msc-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Yundunhsm",
                            "DomainName": "yundunhsm.aliyuncs.com"
                        },
                        {
                            "ProductName": "Iot",
                            "DomainName": "iot.aliyuncs.com"
                        },
                        {
                            "ProductName": "jaq",
                            "DomainName": "jaq.aliyuncs.com"
                        },
                        {
                            "ProductName": "Oms",
                            "DomainName": "oms.aliyuncs.com"
                        },
                        {
                            "ProductName": "M-kvstore",
                            "DomainName": "m-kvstore.aliyuncs.com"
                        },
                        {
                            "ProductName": "live",
                            "DomainName": "live.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ecs",
                            "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Alert",
                            "DomainName": "alert.aliyuncs.com"
                        },
                        {
                            "ProductName": "CmsSiteMonitor",
                            "DomainName": "sitemonitor.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ace",
                            "DomainName": "ace.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "AMS",
                            "DomainName": "ams.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ots",
                            "DomainName": "ots-pop.aliyuncs.com"
                        },
                        {
                            "ProductName": "PTS",
                            "DomainName": "pts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Qualitycheck",
                            "DomainName": "qualitycheck.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ubsms",
                            "DomainName": "ubsms.aliyuncs.com"
                        },
                        {
                            "ProductName": "CloudAPI",
                            "DomainName": "apigateway.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sts",
                            "DomainName": "sts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Rds",
                            "DomainName": "rds.aliyuncs.com"
                        },
                        {
                            "ProductName": "Mts",
                            "DomainName": "mts.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Location-inner",
                            "DomainName": "location-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "CF",
                            "DomainName": "cf.aliyuncs.com"
                        },
                        {
                            "ProductName": "Httpdns",
                            "DomainName": "httpdns-api.aliyuncs.com"
                        },
                        {
                            "ProductName": "Green",
                            "DomainName": "green.aliyuncs.com"
                        },
                        {
                            "ProductName": "Aas",
                            "DomainName": "aas.aliyuncs.com"
                        },
                        {
                            "ProductName": "Alidns",
                            "DomainName": "alidns.aliyuncs.com"
                        },
                        {
                            "ProductName": "Push",
                            "DomainName": "cloudpush.aliyuncs.com"
                        },
                        {
                            "ProductName": "HighDDos",
                            "DomainName": "yd-highddos-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Cms",
                            "DomainName": "metrics.aliyuncs.com"
                        },
                        {
                            "ProductName": "Slb",
                            "DomainName": "slb.aliyuncs.com"
                        },
                        {
                            "ProductName": "Commondriver",
                            "DomainName": "common.driver.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dts",
                            "DomainName": "dts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Domain",
                            "DomainName": "domain.aliyuncs.com"
                        },
                        {
                            "ProductName": "ROS",
                            "DomainName": "ros.aliyuncs.com"
                        },
                        {
                            "ProductName": "Oss",
                            "DomainName": "oss-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ram",
                            "DomainName": "ram.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sales",
                            "DomainName": "sales.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Crm",
                            "DomainName": "crm-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "OssAdmin",
                            "DomainName": "oss-admin.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ons",
                            "DomainName": "ons.aliyuncs.com"
                        },
                        {
                            "ProductName": "Cdn",
                            "DomainName": "cdn.aliyuncs.com"
                        }
                    ]
                }
            },
            {
                "name": "cn-haidian-cm12-c01",
                "RegionIds": {
                    "RegionId": "cn-haidian-cm12-c01"
                },
                "Products": {
                    "Product": [
                        {
                            "ProductName": "Ecs",
                            "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Vpc",
                            "DomainName": "vpc.aliyuncs.com"
                        },
                        {
                            "ProductName": "Rds",
                            "DomainName": "rds.aliyuncs.com"
                        }
                    ]
                }
            },
            {
                "name": "cn-anhui-gov",
                "RegionIds": {
                    "RegionId": "cn-anhui-gov"
                },
                "Products": {
                    "Product": [
                        {
                            "ProductName": "Ecs",
                            "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Vpc",
                            "DomainName": "vpc.aliyuncs.com"
                        }
                    ]
                }
            },
            {
                "name": "cn-shenzhen",
                "RegionIds": {
                    "RegionId": "cn-shenzhen"
                },
                "Products": {
                    "Product": [
                        {
                            "ProductName": "CS",
                            "DomainName": "cs.aliyuncs.com"
                        },
                        {
                            "ProductName": "COS",
                            "DomainName": "cos.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ons",
                            "DomainName": "ons.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ess",
                            "DomainName": "ess.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dqs",
                            "DomainName": "dqs.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dds",
                            "DomainName": "mongodb.aliyuncs.com"
                        },
                        {
                            "ProductName": "Alidns",
                            "DomainName": "alidns.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sms",
                            "DomainName": "sms.aliyuncs.com"
                        },
                        {
                            "ProductName": "Jaq",
                            "DomainName": "jaq.aliyuncs.com"
                        },
                        {
                            "ProductName": "Push",
                            "DomainName": "cloudpush.aliyuncs.com"
                        },
                        {
                            "ProductName": "Kms",
                            "DomainName": "kms.cn-shenzhen.aliyuncs.com"
                        },
                        {
                            "ProductName": "Location",
                            "DomainName": "location.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ocs",
                            "DomainName": "m-kvstore.aliyuncs.com"
                        },
                        {
                            "ProductName": "Alert",
                            "DomainName": "alert.aliyuncs.com"
                        },
                        {
                            "ProductName": "Drc",
                            "DomainName": "drc.aliyuncs.com"
                        },
                        {
                            "ProductName": "R-kvstore",
                            "DomainName": "r-kvstore-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Yundun",
                            "DomainName": "yundun-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ubsms-inner",
                            "DomainName": "ubsms-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dm",
                            "DomainName": "dm.aliyuncs.com"
                        },
                        {
                            "ProductName": "Commondriver",
                            "DomainName": "common.driver.aliyuncs.com"
                        },
                        {
                            "ProductName": "oceanbase",
                            "DomainName": "oceanbase.aliyuncs.com"
                        },
                        {
                            "ProductName": "Iot",
                            "DomainName": "iot.aliyuncs.com"
                        },
                        {
                            "ProductName": "HPC",
                            "DomainName": "hpc.aliyuncs.com"
                        },
                        {
                            "ProductName": "Bss",
                            "DomainName": "bss.aliyuncs.com"
                        },
                        {
                            "ProductName": "Oms",
                            "DomainName": "oms.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ubsms",
                            "DomainName": "ubsms.aliyuncs.com"
                        },
                        {
                            "ProductName": "live",
                            "DomainName": "live.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ecs",
                            "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "M-kvstore",
                            "DomainName": "m-kvstore.aliyuncs.com"
                        },
                        {
                            "ProductName": "CmsSiteMonitor",
                            "DomainName": "sitemonitor.aliyuncs.com"
                        },
                        {
                            "ProductName": "BatchCompute",
                            "DomainName": "batchcompute.cn-shenzhen.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ace",
                            "DomainName": "ace.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "ROS",
                            "DomainName": "ros.aliyuncs.com"
                        },
                        {
                            "ProductName": "PTS",
                            "DomainName": "pts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ace-ops",
                            "DomainName": "ace-ops.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Apigateway",
                            "DomainName": "apigateway.cn-shenzhen.aliyuncs.com"
                        },
                        {
                            "ProductName": "CloudAPI",
                            "DomainName": "apigateway.cn-shenzhen.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sts",
                            "DomainName": "sts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Vpc",
                            "DomainName": "vpc.aliyuncs.com"
                        },
                        {
                            "ProductName": "Rds",
                            "DomainName": "rds.aliyuncs.com"
                        },
                        {
                            "ProductName": "Mts",
                            "DomainName": "mts.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Oas",
                            "DomainName": "cn-shenzhen.oas.aliyuncs.com"
                        },
                        {
                            "ProductName": "CF",
                            "DomainName": "cf.aliyuncs.com"
                        },
                        {
                            "ProductName": "Acs",
                            "DomainName": "acs.aliyun-inc.com"
                        },
                        {
                            "ProductName": "Crm",
                            "DomainName": "crm-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Location-inner",
                            "DomainName": "location-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Aas",
                            "DomainName": "aas.aliyuncs.com"
                        },
                        {
                            "ProductName": "Emr",
                            "DomainName": "emr.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dts",
                            "DomainName": "dts.aliyuncs.com"
                        },
                        {
                            "ProductName": "HighDDos",
                            "DomainName": "yd-highddos-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Vpc-inner",
                            "DomainName": "vpc-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Cms",
                            "DomainName": "metrics.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Slb",
                            "DomainName": "slb.aliyuncs.com"
                        },
                        {
                            "ProductName": "Risk",
                            "DomainName": "risk-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Domain",
                            "DomainName": "domain.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ots",
                            "DomainName": "ots-pop.aliyuncs.com"
                        },
                        {
                            "ProductName": "jaq",
                            "DomainName": "jaq.aliyuncs.com"
                        },
                        {
                            "ProductName": "Cdn",
                            "DomainName": "cdn.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ram",
                            "DomainName": "ram.aliyuncs.com"
                        },
                        {
                            "ProductName": "Drds",
                            "DomainName": "drds.aliyuncs.com"
                        },
                        {
                            "ProductName": "OssAdmin",
                            "DomainName": "oss-admin.aliyuncs.com"
                        },
                        {
                            "ProductName": "Green",
                            "DomainName": "green.aliyuncs.com"
                        },
                        {
                            "ProductName": "Httpdns",
                            "DomainName": "httpdns-api.aliyuncs.com"
                        },
                        {
                            "ProductName": "Oss",
                            "DomainName": "oss-cn-shenzhen.aliyuncs.com"
                        }
                    ]
                }
            },
            {
                "name": "ap-southeast-2",
                "RegionIds": {
                    "RegionId": "ap-southeast-2"
                },
                "Products": {
                    "Product": [
                        {
                            "ProductName": "Rds",
                            "DomainName": "rds.ap-southeast-2.aliyuncs.com"
                        },
                        {
                            "ProductName": "Kms",
                            "DomainName": "kms.ap-southeast-2.aliyuncs.com"
                        },
                        {
                            "ProductName": "Vpc",
                            "DomainName": "vpc.ap-southeast-2.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ecs",
                            "DomainName": "ecs.ap-southeast-2.aliyuncs.com"
                        },
                        {
                            "ProductName": "Cms",
                            "DomainName": "metrics.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Slb",
                            "DomainName": "slb.ap-southeast-2.aliyuncs.com"
                        }
                    ]
                }
            },
            {
                "name": "cn-qingdao",
                "RegionIds": {
                    "RegionId": "cn-qingdao"
                },
                "Products": {
                    "Product": [
                        {
                            "ProductName": "CS",
                            "DomainName": "cs.aliyuncs.com"
                        },
                        {
                            "ProductName": "COS",
                            "DomainName": "cos.aliyuncs.com"
                        },
                        {
                            "ProductName": "HPC",
                            "DomainName": "hpc.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dqs",
                            "DomainName": "dqs.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dds",
                            "DomainName": "mongodb.aliyuncs.com"
                        },
                        {
                            "ProductName": "Emr",
                            "DomainName": "emr.cn-qingdao.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sms",
                            "DomainName": "sms.aliyuncs.com"
                        },
                        {
                            "ProductName": "Jaq",
                            "DomainName": "jaq.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dts",
                            "DomainName": "dts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Kms",
                            "DomainName": "kms.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Location",
                            "DomainName": "location.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ess",
                            "DomainName": "ess.aliyuncs.com"
                        },
                        {
                            "ProductName": "R-kvstore",
                            "DomainName": "r-kvstore-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Alert",
                            "DomainName": "alert.aliyuncs.com"
                        },
                        {
                            "ProductName": "Drc",
                            "DomainName": "drc.aliyuncs.com"
                        },
                        {
                            "ProductName": "Yundun",
                            "DomainName": "yundun-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ubsms-inner",
                            "DomainName": "ubsms-inner.cn-qingdao.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ocs",
                            "DomainName": "m-kvstore.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dm",
                            "DomainName": "dm.aliyuncs.com"
                        },
                        {
                            "ProductName": "Risk",
                            "DomainName": "risk-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "oceanbase",
                            "DomainName": "oceanbase.aliyuncs.com"
                        },
                        {
                            "ProductName": "Iot",
                            "DomainName": "iot.aliyuncs.com"
                        },
                        {
                            "ProductName": "Bss",
                            "DomainName": "bss.aliyuncs.com"
                        },
                        {
                            "ProductName": "Oms",
                            "DomainName": "oms.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ubsms",
                            "DomainName": "ubsms.cn-qingdao.aliyuncs.com"
                        },
                        {
                            "ProductName": "live",
                            "DomainName": "live.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ecs",
                            "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "M-kvstore",
                            "DomainName": "m-kvstore.aliyuncs.com"
                        },
                        {
                            "ProductName": "CmsSiteMonitor",
                            "DomainName": "sitemonitor.aliyuncs.com"
                        },
                        {
                            "ProductName": "BatchCompute",
                            "DomainName": "batchcompute.cn-qingdao.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ace",
                            "DomainName": "ace.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ots",
                            "DomainName": "ots-pop.aliyuncs.com"
                        },
                        {
                            "ProductName": "PTS",
                            "DomainName": "pts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ace-ops",
                            "DomainName": "ace-ops.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Apigateway",
                            "DomainName": "apigateway.cn-qingdao.aliyuncs.com"
                        },
                        {
                            "ProductName": "CloudAPI",
                            "DomainName": "apigateway.cn-qingdao.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sts",
                            "DomainName": "sts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Rds",
                            "DomainName": "rds.aliyuncs.com"
                        },
                        {
                            "ProductName": "Mts",
                            "DomainName": "mts.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Location-inner",
                            "DomainName": "location-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "CF",
                            "DomainName": "cf.aliyuncs.com"
                        },
                        {
                            "ProductName": "Acs",
                            "DomainName": "acs.aliyun-inc.com"
                        },
                        {
                            "ProductName": "Httpdns",
                            "DomainName": "httpdns-api.aliyuncs.com"
                        },
                        {
                            "ProductName": "Green",
                            "DomainName": "green.aliyuncs.com"
                        },
                        {
                            "ProductName": "Aas",
                            "DomainName": "aas.aliyuncs.com"
                        },
                        {
                            "ProductName": "Alidns",
                            "DomainName": "alidns.aliyuncs.com"
                        },
                        {
                            "ProductName": "Push",
                            "DomainName": "cloudpush.aliyuncs.com"
                        },
                        {
                            "ProductName": "HighDDos",
                            "DomainName": "yd-highddos-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Vpc-inner",
                            "DomainName": "vpc-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Cms",
                            "DomainName": "metrics.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Slb",
                            "DomainName": "slb.aliyuncs.com"
                        },
                        {
                            "ProductName": "Commondriver",
                            "DomainName": "common.driver.aliyuncs.com"
                        },
                        {
                            "ProductName": "Domain",
                            "DomainName": "domain.aliyuncs.com"
                        },
                        {
                            "ProductName": "ROS",
                            "DomainName": "ros.aliyuncs.com"
                        },
                        {
                            "ProductName": "jaq",
                            "DomainName": "jaq.aliyuncs.com"
                        },
                        {
                            "ProductName": "Cdn",
                            "DomainName": "cdn.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ram",
                            "DomainName": "ram.aliyuncs.com"
                        },
                        {
                            "ProductName": "Drds",
                            "DomainName": "drds.aliyuncs.com"
                        },
                        {
                            "ProductName": "Crm",
                            "DomainName": "crm-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "OssAdmin",
                            "DomainName": "oss-admin.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ons",
                            "DomainName": "ons.aliyuncs.com"
                        },
                        {
                            "ProductName": "Oss",
                            "DomainName": "oss-cn-qingdao.aliyuncs.com"
                        }
                    ]
                }
            },
            {
                "name": "cn-shenzhen-su18-b02",
                "RegionIds": {
                    "RegionId": "cn-shenzhen-su18-b02"
                },
                "Products": {
                    "Product": {
                        "ProductName": "Ecs",
                        "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                    }
                }
            },
            {
                "name": "cn-shenzhen-su18-b03",
                "RegionIds": {
                    "RegionId": "cn-shenzhen-su18-b03"
                },
                "Products": {
                    "Product": {
                        "ProductName": "Ecs",
                        "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                    }
                }
            },
            {
                "name": "cn-shenzhen-su18-b01",
                "RegionIds": {
                    "RegionId": "cn-shenzhen-su18-b01"
                },
                "Products": {
                    "Product": {
                        "ProductName": "Ecs",
                        "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                    }
                }
            },
            {
                "name": "ap-southeast-antgroup-1",
                "RegionIds": {
                    "RegionId": "ap-southeast-antgroup-1"
                },
                "Products": {
                    "Product": {
                        "ProductName": "Ecs",
                        "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                    }
                }
            },
            {
                "name": "oss-cn-bjzwy",
                "RegionIds": {
                    "RegionId": "oss-cn-bjzwy"
                },
                "Products": {
                    "Product": {
                        "ProductName": "Oss",
                        "DomainName": "oss-cn-bjzwy.aliyuncs.com"
                    }
                }
            },
            {
                "name": "cn-henan-am12001",
                "RegionIds": {
                    "RegionId": "cn-henan-am12001"
                },
                "Products": {
                    "Product": [
                        {
                            "ProductName": "Ecs",
                            "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Vpc",
                            "DomainName": "vpc.aliyuncs.com"
                        }
                    ]
                }
            },
            {
                "name": "cn-beijing",
                "RegionIds": {
                    "RegionId": "cn-beijing"
                },
                "Products": {
                    "Product": [
                        {
                            "ProductName": "CS",
                            "DomainName": "cs.aliyuncs.com"
                        },
                        {
                            "ProductName": "COS",
                            "DomainName": "cos.aliyuncs.com"
                        },
                        {
                            "ProductName": "Jaq",
                            "DomainName": "jaq.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ess",
                            "DomainName": "ess.aliyuncs.com"
                        },
                        {
                            "ProductName": "Billing",
                            "DomainName": "billing.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dqs",
                            "DomainName": "dqs.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dds",
                            "DomainName": "mongodb.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sts",
                            "DomainName": "sts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sms",
                            "DomainName": "sms.aliyuncs.com"
                        },
                        {
                            "ProductName": "Msg",
                            "DomainName": "msg-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sales",
                            "DomainName": "sales.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "HPC",
                            "DomainName": "hpc.aliyuncs.com"
                        },
                        {
                            "ProductName": "Oas",
                            "DomainName": "cn-beijing.oas.aliyuncs.com"
                        },
                        {
                            "ProductName": "Location",
                            "DomainName": "location.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ons",
                            "DomainName": "ons.aliyuncs.com"
                        },
                        {
                            "ProductName": "ChargingService",
                            "DomainName": "chargingservice.aliyuncs.com"
                        },
                        {
                            "ProductName": "Hpc",
                            "DomainName": "hpc.aliyuncs.com"
                        },
                        {
                            "ProductName": "Commondriver",
                            "DomainName": "common.driver.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ocs",
                            "DomainName": "m-kvstore.aliyuncs.com"
                        },
                        {
                            "ProductName": "jaq",
                            "DomainName": "jaq.aliyuncs.com"
                        },
                        {
                            "ProductName": "Workorder",
                            "DomainName": "workorder.aliyuncs.com"
                        },
                        {
                            "ProductName": "R-kvstore",
                            "DomainName": "r-kvstore-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Bss",
                            "DomainName": "bss.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ubsms-inner",
                            "DomainName": "ubsms-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dm",
                            "DomainName": "dm.aliyuncs.com"
                        },
                        {
                            "ProductName": "Risk",
                            "DomainName": "risk-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "oceanbase",
                            "DomainName": "oceanbase.aliyuncs.com"
                        },
                        {
                            "ProductName": "Msc",
                            "DomainName": "msc-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Yundunhsm",
                            "DomainName": "yundunhsm.aliyuncs.com"
                        },
                        {
                            "ProductName": "Iot",
                            "DomainName": "iot.aliyuncs.com"
                        },
                        {
                            "ProductName": "Alert",
                            "DomainName": "alert.aliyuncs.com"
                        },
                        {
                            "ProductName": "Oms",
                            "DomainName": "oms.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ubsms",
                            "DomainName": "ubsms.aliyuncs.com"
                        },
                        {
                            "ProductName": "live",
                            "DomainName": "live.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ecs",
                            "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ace-ops",
                            "DomainName": "ace-ops.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Vpc",
                            "DomainName": "vpc.aliyuncs.com"
                        },
                        {
                            "ProductName": "BatchCompute",
                            "DomainName": "batchCompute.aliyuncs.com"
                        },
                        {
                            "ProductName": "AMS",
                            "DomainName": "ams.aliyuncs.com"
                        },
                        {
                            "ProductName": "ROS",
                            "DomainName": "ros.aliyuncs.com"
                        },
                        {
                            "ProductName": "PTS",
                            "DomainName": "pts.aliyuncs.com"
                        },
                        {
                            "ProductName": "M-kvstore",
                            "DomainName": "m-kvstore.aliyuncs.com"
                        },
                        {
                            "ProductName": "Apigateway",
                            "DomainName": "apigateway.cn-beijing.aliyuncs.com"
                        },
                        {
                            "ProductName": "CloudAPI",
                            "DomainName": "apigateway.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Kms",
                            "DomainName": "kms.cn-beijing.aliyuncs.com"
                        },
                        {
                            "ProductName": "HighDDos",
                            "DomainName": "yd-highddos-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "CmsSiteMonitor",
                            "DomainName": "sitemonitor.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ace",
                            "DomainName": "ace.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Mts",
                            "DomainName": "mts.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "CF",
                            "DomainName": "cf.aliyuncs.com"
                        },
                        {
                            "ProductName": "Acs",
                            "DomainName": "acs.aliyun-inc.com"
                        },
                        {
                            "ProductName": "Httpdns",
                            "DomainName": "httpdns-api.aliyuncs.com"
                        },
                        {
                            "ProductName": "Location-inner",
                            "DomainName": "location-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Aas",
                            "DomainName": "aas.aliyuncs.com"
                        },
                        {
                            "ProductName": "Emr",
                            "DomainName": "emr.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dts",
                            "DomainName": "dts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Drc",
                            "DomainName": "drc.aliyuncs.com"
                        },
                        {
                            "ProductName": "Push",
                            "DomainName": "cloudpush.aliyuncs.com"
                        },
                        {
                            "ProductName": "Cms",
                            "DomainName": "metrics.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Slb",
                            "DomainName": "slb.aliyuncs.com"
                        },
                        {
                            "ProductName": "Crm",
                            "DomainName": "crm-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Domain",
                            "DomainName": "domain.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ots",
                            "DomainName": "ots-pop.aliyuncs.com"
                        },
                        {
                            "ProductName": "Oss",
                            "DomainName": "oss-cn-beijing.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ram",
                            "DomainName": "ram.aliyuncs.com"
                        },
                        {
                            "ProductName": "Drds",
                            "DomainName": "drds.aliyuncs.com"
                        },
                        {
                            "ProductName": "Vpc-inner",
                            "DomainName": "vpc-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Rds",
                            "DomainName": "rds.aliyuncs.com"
                        },
                        {
                            "ProductName": "OssAdmin",
                            "DomainName": "oss-admin.aliyuncs.com"
                        },
                        {
                            "ProductName": "Alidns",
                            "DomainName": "alidns.aliyuncs.com"
                        },
                        {
                            "ProductName": "Green",
                            "DomainName": "green.aliyuncs.com"
                        },
                        {
                            "ProductName": "Yundun",
                            "DomainName": "yundun-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Cdn",
                            "DomainName": "cdn.aliyuncs.com"
                        },
                        {
                            "ProductName": "YundunDdos",
                            "DomainName": "inner-yundun-ddos.cn-hangzhou.aliyuncs.com"
                        }
                    ]
                }
            },
            {
                "name": "cn-hangzhou-d",
                "RegionIds": {
                    "RegionId": "cn-hangzhou-d"
                },
                "Products": {
                    "Product": [
                        {
                            "ProductName": "CS",
                            "DomainName": "cs.aliyuncs.com"
                        },
                        {
                            "ProductName": "COS",
                            "DomainName": "cos.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ess",
                            "DomainName": "ess.aliyuncs.com"
                        },
                        {
                            "ProductName": "Billing",
                            "DomainName": "billing.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dqs",
                            "DomainName": "dqs.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dds",
                            "DomainName": "mongodb.aliyuncs.com"
                        },
                        {
                            "ProductName": "Emr",
                            "DomainName": "emr.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sms",
                            "DomainName": "sms.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sales",
                            "DomainName": "sales.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dts",
                            "DomainName": "dts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Kms",
                            "DomainName": "kms.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Location",
                            "DomainName": "location.aliyuncs.com"
                        },
                        {
                            "ProductName": "Msg",
                            "DomainName": "msg-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "ChargingService",
                            "DomainName": "chargingservice.aliyuncs.com"
                        },
                        {
                            "ProductName": "R-kvstore",
                            "DomainName": "r-kvstore-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Bss",
                            "DomainName": "bss.aliyuncs.com"
                        },
                        {
                            "ProductName": "Msc",
                            "DomainName": "msc-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ocs",
                            "DomainName": "m-kvstore.aliyuncs.com"
                        },
                        {
                            "ProductName": "Yundun",
                            "DomainName": "yundun-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ubsms-inner",
                            "DomainName": "ubsms-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dm",
                            "DomainName": "dm.aliyuncs.com"
                        },
                        {
                            "ProductName": "Risk",
                            "DomainName": "risk-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "oceanbase",
                            "DomainName": "oceanbase.aliyuncs.com"
                        },
                        {
                            "ProductName": "Workorder",
                            "DomainName": "workorder.aliyuncs.com"
                        },
                        {
                            "ProductName": "Alidns",
                            "DomainName": "alidns.aliyuncs.com"
                        },
                        {
                            "ProductName": "Iot",
                            "DomainName": "iot.aliyuncs.com"
                        },
                        {
                            "ProductName": "HPC",
                            "DomainName": "hpc.aliyuncs.com"
                        },
                        {
                            "ProductName": "jaq",
                            "DomainName": "jaq.aliyuncs.com"
                        },
                        {
                            "ProductName": "Oms",
                            "DomainName": "oms.aliyuncs.com"
                        },
                        {
                            "ProductName": "live",
                            "DomainName": "live.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ecs",
                            "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "M-kvstore",
                            "DomainName": "m-kvstore.aliyuncs.com"
                        },
                        {
                            "ProductName": "CmsSiteMonitor",
                            "DomainName": "sitemonitor.aliyuncs.com"
                        },
                        {
                            "ProductName": "Alert",
                            "DomainName": "alert.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ace",
                            "DomainName": "ace.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "AMS",
                            "DomainName": "ams.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ots",
                            "DomainName": "ots-pop.aliyuncs.com"
                        },
                        {
                            "ProductName": "PTS",
                            "DomainName": "pts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Qualitycheck",
                            "DomainName": "qualitycheck.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ubsms",
                            "DomainName": "ubsms.aliyuncs.com"
                        },
                        {
                            "ProductName": "CloudAPI",
                            "DomainName": "apigateway.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Rds",
                            "DomainName": "rds.aliyuncs.com"
                        },
                        {
                            "ProductName": "Mts",
                            "DomainName": "mts.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Location-inner",
                            "DomainName": "location-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "CF",
                            "DomainName": "cf.aliyuncs.com"
                        },
                        {
                            "ProductName": "Httpdns",
                            "DomainName": "httpdns-api.aliyuncs.com"
                        },
                        {
                            "ProductName": "Green",
                            "DomainName": "green.aliyuncs.com"
                        },
                        {
                            "ProductName": "Aas",
                            "DomainName": "aas.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sts",
                            "DomainName": "sts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Push",
                            "DomainName": "cloudpush.aliyuncs.com"
                        },
                        {
                            "ProductName": "HighDDos",
                            "DomainName": "yd-highddos-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Cms",
                            "DomainName": "metrics.aliyuncs.com"
                        },
                        {
                            "ProductName": "Slb",
                            "DomainName": "slb.aliyuncs.com"
                        },
                        {
                            "ProductName": "YundunDdos",
                            "DomainName": "inner-yundun-ddos.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Domain",
                            "DomainName": "domain.aliyuncs.com"
                        },
                        {
                            "ProductName": "Commondriver",
                            "DomainName": "common.driver.aliyuncs.com"
                        },
                        {
                            "ProductName": "ROS",
                            "DomainName": "ros.aliyuncs.com"
                        },
                        {
                            "ProductName": "Cdn",
                            "DomainName": "cdn.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ram",
                            "DomainName": "ram.aliyuncs.com"
                        },
                        {
                            "ProductName": "Drds",
                            "DomainName": "drds.aliyuncs.com"
                        },
                        {
                            "ProductName": "Crm",
                            "DomainName": "crm-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "OssAdmin",
                            "DomainName": "oss-admin.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ons",
                            "DomainName": "ons.aliyuncs.com"
                        },
                        {
                            "ProductName": "Yundunhsm",
                            "DomainName": "yundunhsm.aliyuncs.com"
                        },
                        {
                            "ProductName": "Drc",
                            "DomainName": "drc.aliyuncs.com"
                        },
                        {
                            "ProductName": "Oss",
                            "DomainName": "oss-cn-hangzhou.aliyuncs.com"
                        }
                    ]
                }
            },
            {
                "name": "cn-gansu-am6",
                "RegionIds": {
                    "RegionId": "cn-gansu-am6"
                },
                "Products": {
                    "Product": [
                        {
                            "ProductName": "Ecs",
                            "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Vpc",
                            "DomainName": "vpc.aliyuncs.com"
                        },
                        {
                            "ProductName": "Rds",
                            "DomainName": "rds.aliyuncs.com"
                        }
                    ]
                }
            },
            {
                "name": "cn-ningxiazhongwei",
                "RegionIds": {
                    "RegionId": "cn-ningxiazhongwei"
                },
                "Products": {
                    "Product": [
                        {
                            "ProductName": "Ecs",
                            "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Vpc",
                            "DomainName": "vpc.aliyuncs.com"
                        }
                    ]
                }
            },
            {
                "name": "cn-shanghai-et2-b01",
                "RegionIds": {
                    "RegionId": "cn-shanghai-et2-b01"
                },
                "Products": {
                    "Product": [
                        {
                            "ProductName": "CS",
                            "DomainName": "cs.aliyuncs.com"
                        },
                        {
                            "ProductName": "Risk",
                            "DomainName": "risk-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "COS",
                            "DomainName": "cos.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ons",
                            "DomainName": "ons.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ess",
                            "DomainName": "ess.aliyuncs.com"
                        },
                        {
                            "ProductName": "Billing",
                            "DomainName": "billing.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dqs",
                            "DomainName": "dqs.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dds",
                            "DomainName": "mongodb.aliyuncs.com"
                        },
                        {
                            "ProductName": "Alidns",
                            "DomainName": "alidns.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sms",
                            "DomainName": "sms.aliyuncs.com"
                        },
                        {
                            "ProductName": "Jaq",
                            "DomainName": "jaq.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dts",
                            "DomainName": "dts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Kms",
                            "DomainName": "kms.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Location",
                            "DomainName": "location.aliyuncs.com"
                        },
                        {
                            "ProductName": "Msg",
                            "DomainName": "msg-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "ChargingService",
                            "DomainName": "chargingservice.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ocs",
                            "DomainName": "m-kvstore.aliyuncs.com"
                        },
                        {
                            "ProductName": "Bss",
                            "DomainName": "bss.aliyuncs.com"
                        },
                        {
                            "ProductName": "Msc",
                            "DomainName": "msc-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "R-kvstore",
                            "DomainName": "r-kvstore-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Yundun",
                            "DomainName": "yundun-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ubsms-inner",
                            "DomainName": "ubsms-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dm",
                            "DomainName": "dm.aliyuncs.com"
                        },
                        {
                            "ProductName": "Commondriver",
                            "DomainName": "common.driver.aliyuncs.com"
                        },
                        {
                            "ProductName": "oceanbase",
                            "DomainName": "oceanbase.aliyuncs.com"
                        },
                        {
                            "ProductName": "Workorder",
                            "DomainName": "workorder.aliyuncs.com"
                        },
                        {
                            "ProductName": "Yundunhsm",
                            "DomainName": "yundunhsm.aliyuncs.com"
                        },
                        {
                            "ProductName": "Iot",
                            "DomainName": "iot.aliyuncs.com"
                        },
                        {
                            "ProductName": "jaq",
                            "DomainName": "jaq.aliyuncs.com"
                        },
                        {
                            "ProductName": "Oms",
                            "DomainName": "oms.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ubsms",
                            "DomainName": "ubsms.aliyuncs.com"
                        },
                        {
                            "ProductName": "live",
                            "DomainName": "live.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ecs",
                            "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ace-ops",
                            "DomainName": "ace-ops.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "CmsSiteMonitor",
                            "DomainName": "sitemonitor.aliyuncs.com"
                        },
                        {
                            "ProductName": "BatchCompute",
                            "DomainName": "batchCompute.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ace",
                            "DomainName": "ace.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "AMS",
                            "DomainName": "ams.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ots",
                            "DomainName": "ots-pop.aliyuncs.com"
                        },
                        {
                            "ProductName": "PTS",
                            "DomainName": "pts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Qualitycheck",
                            "DomainName": "qualitycheck.aliyuncs.com"
                        },
                        {
                            "ProductName": "M-kvstore",
                            "DomainName": "m-kvstore.aliyuncs.com"
                        },
                        {
                            "ProductName": "CloudAPI",
                            "DomainName": "apigateway.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Rds",
                            "DomainName": "rds.aliyuncs.com"
                        },
                        {
                            "ProductName": "Mts",
                            "DomainName": "mts.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "CF",
                            "DomainName": "cf.aliyuncs.com"
                        },
                        {
                            "ProductName": "Acs",
                            "DomainName": "acs.aliyun-inc.com"
                        },
                        {
                            "ProductName": "Httpdns",
                            "DomainName": "httpdns-api.aliyuncs.com"
                        },
                        {
                            "ProductName": "Location-inner",
                            "DomainName": "location-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Aas",
                            "DomainName": "aas.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sts",
                            "DomainName": "sts.aliyuncs.com"
                        },
                        {
                            "ProductName": "HPC",
                            "DomainName": "hpc.aliyuncs.com"
                        },
                        {
                            "ProductName": "Emr",
                            "DomainName": "emr.aliyuncs.com"
                        },
                        {
                            "ProductName": "HighDDos",
                            "DomainName": "yd-highddos-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Push",
                            "DomainName": "cloudpush.aliyuncs.com"
                        },
                        {
                            "ProductName": "Cms",
                            "DomainName": "metrics.aliyuncs.com"
                        },
                        {
                            "ProductName": "Slb",
                            "DomainName": "slb.aliyuncs.com"
                        },
                        {
                            "ProductName": "Crm",
                            "DomainName": "crm-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Alert",
                            "DomainName": "alert.aliyuncs.com"
                        },
                        {
                            "ProductName": "Domain",
                            "DomainName": "domain.aliyuncs.com"
                        },
                        {
                            "ProductName": "ROS",
                            "DomainName": "ros.aliyuncs.com"
                        },
                        {
                            "ProductName": "Cdn",
                            "DomainName": "cdn.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ram",
                            "DomainName": "ram.aliyuncs.com"
                        },
                        {
                            "ProductName": "Drds",
                            "DomainName": "drds.aliyuncs.com"
                        },
                        {
                            "ProductName": "Vpc-inner",
                            "DomainName": "vpc-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "OssAdmin",
                            "DomainName": "oss-admin.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sales",
                            "DomainName": "sales.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Green",
                            "DomainName": "green.aliyuncs.com"
                        },
                        {
                            "ProductName": "Drc",
                            "DomainName": "drc.aliyuncs.com"
                        },
                        {
                            "ProductName": "Oss",
                            "DomainName": "oss-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "YundunDdos",
                            "DomainName": "inner-yundun-ddos.cn-hangzhou.aliyuncs.com"
                        }
                    ]
                }
            },
            {
                "name": "cn-ningxia-am7-c01",
                "RegionIds": {
                    "RegionId": "cn-ningxia-am7-c01"
                },
                "Products": {
                    "Product": [
                        {
                            "ProductName": "Ecs",
                            "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Vpc",
                            "DomainName": "vpc.aliyuncs.com"
                        }
                    ]
                }
            },
            {
                "name": "cn-shenzhen-finance-1",
                "RegionIds": {
                    "RegionId": "cn-shenzhen-finance-1"
                },
                "Products": {
                    "Product": [
                        {
                            "ProductName": "Kms",
                            "DomainName": "kms.cn-shenzhen-finance-1.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ecs",
                            "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Rds",
                            "DomainName": "rds.aliyuncs.com"
                        },
                        {
                            "ProductName": "Vpc",
                            "DomainName": "vpc.aliyuncs.com"
                        }
                    ]
                }
            },
            {
                "name": "ap-southeast-1",
                "RegionIds": {
                    "RegionId": "ap-southeast-1"
                },
                "Products": {
                    "Product": [
                        {
                            "ProductName": "CS",
                            "DomainName": "cs.aliyuncs.com"
                        },
                        {
                            "ProductName": "Risk",
                            "DomainName": "risk-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "COS",
                            "DomainName": "cos.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ess",
                            "DomainName": "ess.aliyuncs.com"
                        },
                        {
                            "ProductName": "Billing",
                            "DomainName": "billing.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dqs",
                            "DomainName": "dqs.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dds",
                            "DomainName": "mongodb.aliyuncs.com"
                        },
                        {
                            "ProductName": "Alidns",
                            "DomainName": "alidns.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sms",
                            "DomainName": "sms.aliyuncs.com"
                        },
                        {
                            "ProductName": "Drds",
                            "DomainName": "drds.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dts",
                            "DomainName": "dts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Kms",
                            "DomainName": "kms.ap-southeast-1.aliyuncs.com"
                        },
                        {
                            "ProductName": "Location",
                            "DomainName": "location.aliyuncs.com"
                        },
                        {
                            "ProductName": "Msg",
                            "DomainName": "msg-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "ChargingService",
                            "DomainName": "chargingservice.aliyuncs.com"
                        },
                        {
                            "ProductName": "R-kvstore",
                            "DomainName": "r-kvstore-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Alert",
                            "DomainName": "alert.aliyuncs.com"
                        },
                        {
                            "ProductName": "Msc",
                            "DomainName": "msc-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "HighDDos",
                            "DomainName": "yd-highddos-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Yundun",
                            "DomainName": "yundun-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ubsms-inner",
                            "DomainName": "ubsms-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ocs",
                            "DomainName": "m-kvstore.aliyuncs.com"
                        },
                        {
                            "ProductName": "Dm",
                            "DomainName": "dm.aliyuncs.com"
                        },
                        {
                            "ProductName": "Green",
                            "DomainName": "green.aliyuncs.com"
                        },
                        {
                            "ProductName": "Commondriver",
                            "DomainName": "common.driver.aliyuncs.com"
                        },
                        {
                            "ProductName": "oceanbase",
                            "DomainName": "oceanbase.aliyuncs.com"
                        },
                        {
                            "ProductName": "Workorder",
                            "DomainName": "workorder.aliyuncs.com"
                        },
                        {
                            "ProductName": "Yundunhsm",
                            "DomainName": "yundunhsm.aliyuncs.com"
                        },
                        {
                            "ProductName": "Iot",
                            "DomainName": "iot.aliyuncs.com"
                        },
                        {
                            "ProductName": "HPC",
                            "DomainName": "hpc.aliyuncs.com"
                        },
                        {
                            "ProductName": "jaq",
                            "DomainName": "jaq.aliyuncs.com"
                        },
                        {
                            "ProductName": "Oms",
                            "DomainName": "oms.aliyuncs.com"
                        },
                        {
                            "ProductName": "live",
                            "DomainName": "live.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ecs",
                            "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "M-kvstore",
                            "DomainName": "m-kvstore.aliyuncs.com"
                        },
                        {
                            "ProductName": "Vpc",
                            "DomainName": "vpc.aliyuncs.com"
                        },
                        {
                            "ProductName": "BatchCompute",
                            "DomainName": "batchCompute.aliyuncs.com"
                        },
                        {
                            "ProductName": "AMS",
                            "DomainName": "ams.aliyuncs.com"
                        },
                        {
                            "ProductName": "ROS",
                            "DomainName": "ros.aliyuncs.com"
                        },
                        {
                            "ProductName": "PTS",
                            "DomainName": "pts.aliyuncs.com"
                        },
                        {
                            "ProductName": "Qualitycheck",
                            "DomainName": "qualitycheck.aliyuncs.com"
                        },
                        {
                            "ProductName": "Bss",
                            "DomainName": "bss.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ubsms",
                            "DomainName": "ubsms.aliyuncs.com"
                        },
                        {
                            "ProductName": "Apigateway",
                            "DomainName": "apigateway.ap-southeast-1.aliyuncs.com"
                        },
                        {
                            "ProductName": "CloudAPI",
                            "DomainName": "apigateway.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sts",
                            "DomainName": "sts.aliyuncs.com"
                        },
                        {
                            "ProductName": "CmsSiteMonitor",
                            "DomainName": "sitemonitor.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ace",
                            "DomainName": "ace.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Mts",
                            "DomainName": "mts.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "CF",
                            "DomainName": "cf.aliyuncs.com"
                        },
                        {
                            "ProductName": "Crm",
                            "DomainName": "crm-cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Location-inner",
                            "DomainName": "location-inner.aliyuncs.com"
                        },
                        {
                            "ProductName": "Aas",
                            "DomainName": "aas.aliyuncs.com"
                        },
                        {
                            "ProductName": "Emr",
                            "DomainName": "emr.ap-southeast-1.aliyuncs.com"
                        },
                        {
                            "ProductName": "Httpdns",
                            "DomainName": "httpdns-api.aliyuncs.com"
                        },
                        {
                            "ProductName": "Drc",
                            "DomainName": "drc.aliyuncs.com"
                        },
                        {
                            "ProductName": "Push",
                            "DomainName": "cloudpush.aliyuncs.com"
                        },
                        {
                            "ProductName": "Cms",
                            "DomainName": "metrics.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Slb",
                            "DomainName": "slb.aliyuncs.com"
                        },
                        {
                            "ProductName": "YundunDdos",
                            "DomainName": "inner-yundun-ddos.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Domain",
                            "DomainName": "domain.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ots",
                            "DomainName": "ots-pop.aliyuncs.com"
                        },
                        {
                            "ProductName": "Cdn",
                            "DomainName": "cdn.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ram",
                            "DomainName": "ram.aliyuncs.com"
                        },
                        {
                            "ProductName": "Sales",
                            "DomainName": "sales.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Rds",
                            "DomainName": "rds.aliyuncs.com"
                        },
                        {
                            "ProductName": "OssAdmin",
                            "DomainName": "oss-admin.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ons",
                            "DomainName": "ons.aliyuncs.com"
                        },
                        {
                            "ProductName": "Oss",
                            "DomainName": "oss-ap-southeast-1.aliyuncs.com"
                        }
                    ]
                }
            },
            {
                "name": "cn-shenzhen-st4-d01",
                "RegionIds": {
                    "RegionId": "cn-shenzhen-st4-d01"
                },
                "Products": {
                    "Product": {
                        "ProductName": "Ecs",
                        "DomainName": "ecs-cn-hangzhou.aliyuncs.com"
                    }
                }
            },
            {
                "name": "eu-central-1",
                "RegionIds": {
                    "RegionId": "eu-central-1"
                },
                "Products": {
                    "Product": [
                        {
                            "ProductName": "Rds",
                            "DomainName": "rds.eu-central-1.aliyuncs.com"
                        },
                        {
                            "ProductName": "Ecs",
                            "DomainName": "ecs.eu-central-1.aliyuncs.com"
                        },
                        {
                            "ProductName": "Vpc",
                            "DomainName": "vpc.eu-central-1.aliyuncs.com"
                        },
                        {
                            "ProductName": "Kms",
                            "DomainName": "kms.eu-central-1.aliyuncs.com"
                        },
                        {
                            "ProductName": "Cms",
                            "DomainName": "metrics.cn-hangzhou.aliyuncs.com"
                        },
                        {
                            "ProductName": "Slb",
                            "DomainName": "slb.eu-central-1.aliyuncs.com"
                        }
                    ]
                }
            }
        ]
    }
}
]])

function _M.findProductDomain(self, regionId, product)
    if not endpoints then
        return nil
    end

    local list = endpoints.Endpoints.Endpoint
    if not list then
        return nil
    end

    for _, v in ipairs(list) do
        if v.name == regionId then
            local product_list = v.Products.Product
            if not product_list then
                return nil
            end

            for _, v1 in ipairs(product_list) do
                if v1.ProductName == product then
                    return v1.DomainName
                end
            end
        end
    end  
end

return _M
