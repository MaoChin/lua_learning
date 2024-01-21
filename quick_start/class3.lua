--[[
-- 类成员私有化
function getTable()
	id = 1;
	name = "aaa";

	function getId()
		return id;
	end
	function getName()
		return name;
	end

	function setId(newId)
		id = newId;
	end
	function setName(newName)
		id = newName;
	end

	return {
		getId = getId;
		setId = setId;
	}

end

t1 = getTable();
print(t1.id);
print(t1.getId());
t1.setId(2);
print(t1.getId());
]]--


-- 更严谨的写法
function getTable()
	-- 加上 local
	local member = {
		id = 1;
		name = "aaa";
	};

	local function getId()
		return member.id;
	end
	local function setId(newId)
		member.id = newId;
	end

	return {
		getId = getId;
		setId = setId;
	}
end



t1 = getTable();
print(t1.member);
print(t1.id);
print(t1.getId);
print(t1.getId());
t1.setId(2);
print(t1.getId);
print(t1.getId());










