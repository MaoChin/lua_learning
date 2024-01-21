
--[[
grandfather = {id = 1};
 grandfather.__index = grandfather;

father = {name = "aaa"};
 father.__index = father;

son = {};
-- son.__index = father;

setmetatable(father, grandfather);
setmetatable(son, father);

print(grandfather.id);
print(father.id);
print(son.id);
print(son.id);
]]--

--[[
grandfather = {id = 1, name = "aaa"};

function grandfather:new(obj)
	obj = obj or {};
	setmetatable(obj, self);
	-- 设置自索引
	self.__index = self;
	return obj;
end
father = grandfather:new({id = 2});
son = father:new({});

print(grandfather.id);
print(father.id);
print(father.name);
print(son.id);
print(son.name);
]]--

father = {id = 1};
function father:Print()
  print("aaa");
end

function father:new(obj)
  obj = obj or {};
  setmetatable(obj, self);
  -- 要设置自索引，这样每一层继承就都可以生效了
  self.__index = self;
  return obj;
end

son = father:new({id = 2});
son.Print();   -- aaa

-- 子类进行重写
function son:Print()
  print("bbb")
end
son.Print();   -- bbb



