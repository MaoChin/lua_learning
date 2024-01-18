
t1 = {id = 1, name = "aaa"};
t1.__index = t1;  -- 自索引一下
function t1:new(obj)
  obj = obj or {};
  -- 元表，obj有值就用他自己的，否则就用self的！！
  setmetatable(obj, self);
  return obj;
end
t2 = t1:new();
t3 = t1:new({id = 2});
print(t2.id);   -- 1
print(t3.id);   -- 2

print(t3.name);  -- aaa
t3.name = "bbb";
print(t3.name);  --- bbb
