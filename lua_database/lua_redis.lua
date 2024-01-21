
local redis = require("redis");
-- print(redis);
local config = {host = "127.0.0.1", port = 6379};
local client = redis.connect(config);


