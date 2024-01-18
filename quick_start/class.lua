


t1 = {
	id = 1;
	name = "sss"
};

-- self相当与this指针，这个函数不能写在t1里面
function t1:getName()
	return self.name;
end

t2 = t1;

t1 = nil

-- print(t2:getName())

father = { id = 1 };
function father:FPrint()
  print("father");
end
father:FPrint();

son = { id = 2 };
function son:SPrint()
  print("son");
end
son:SPrint();

-- 报错
-- son:FPrint();
setmetatable(son, father);
-- 自索引
father.__index = father;
son.FPrint();  -- 子类可以调用父类的方法了！
