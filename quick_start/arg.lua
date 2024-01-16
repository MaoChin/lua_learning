
--[[
function func(...)
	t1 = {...};
	t2 = table.pack(...);
	for k, v in pairs(t1) do
		print(k, v);
	end
	print("\n");
	for k, v in pairs(t2) do
		print(k, v);
	end
end


func(1,2,3,4,5);
]]--

--[[
function func1(a, b)
  -- 这里x具有static属性！
  local x = 0;
  return function ()
    x = x + 1;
    print(a, b, x);
  end
end

tmpFunc = func1("aa", 222);
tmpFunc();  -- aa 222 1
tmpFunc();  -- aa 222 2
tmpFunc();  -- aa 222 3
]]--


-- 元表
--[[
t1 = {id = 1, name = "aaa"};
metaT1 = {};
setmetatable(t1, metaT1);
print(t1.phone);

metaT1.__index = { phone = "111"};
print(t1.phone);

metaT1.__index = function(t, key)
	t[key] = "new-add1";
	return "new-add2"
end
print(t1.address); -- new-add2
print(t1.address); -- new-add1
print(t1.sex);     -- new-add2
print(t1.sex);     -- new-add1
print(t1.sex);
print(t1.sex);
print(t1.sex);
]]--

t1 = {id = 1, name = "aa"};
t2 = {};
metaT1 = {};
-- 将metaT1设置为t1的元表
setmetatable(t1, metaT1);
-- 设置__newindex是t2
metaT1.__newindex = t2;
-- 此时这个phone在t2中！！！
t1.phone = "1111";
print(t1.phone);    -- nil
print(t2.phone);    -- 1111








