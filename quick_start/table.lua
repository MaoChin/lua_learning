
info = {
	id = 1,
	name = "afsad",
	age = 10
};


-- 遍历
--[[
for k,v in pairs(info) do
	print(k, ": ", v);
end
]]--

-- 新增字段
info.address = "111";
info["sex"] = "nan";

-- 遍历
--[[
for k,v in pairs(info) do
	print(k, ": ", v);
end
]]--

-- 删除字段
info.address = nil;
info["sex"] = nil;
for k,v in pairs(info) do
	print(k, ": ", v);
end

-- 修改字段也是一样的















