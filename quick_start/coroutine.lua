--[[
function func(a, b)
	-- print("aaa");
	-- print(a);
	-- print(b);
	-- 这个返回值会返回给resume
	print(coroutine.status(handle));  -- running
	-- return "func return val", 1;
	coroutine.yield(a * 2);  -- 这里的参数也会返回

end

 handle = coroutine.create(func);
-- print(handle);
-- print(type(handle));

-- 新创建的协程是挂起态的
print(coroutine.status(handle));   -- suspended

-- 唤醒协程，开始执行，后面的参数是给func的
print(coroutine.resume(handle, 1, "ss"));

-- 执行结束后这个协程就是 dead 状态了(没有用yield设置)
print(coroutine.status(handle));   -- dead
]]--



function func(a, b)
	-- print("aaa");
	-- print(a);
	-- print(b);
	-- 这个返回值会返回给resume
	print(coroutine.status(handle));  -- running
	-- return "func return val", 1;

	-- 返回值是下一次唤醒时传入的！
	x, y = coroutine.yield(a * 2);  -- 这里的参数也会返回
	-- 第一次进来到这里就直接返回了

	print(x, y);
	-- 业务逻辑


	-- 后面还可以再 yield

end

 handle = coroutine.create(func);
-- print(handle);
-- print(type(handle));

-- print(coroutine.status(handle));   -- suspended

-- 第一次唤醒，后面的参数传给当时设置的函数
print(coroutine.resume(handle, 1, "ss"));

print(coroutine.status(handle));

-- coroutine.close(handle);
-- print(coroutine.status(handle));

-- 第二次唤醒，后面的参数传给了yield的返回值！
print(coroutine.resume(handle, 22, "aaa"));

-- 如果这个协程后面又 yield了，就可以再合适的时候再次唤醒








