
--[[
while true do
	print("111");

	-- 进行休眠1秒
	os.execute("sleep " .. 1);
end
]]--


-- io.write("asfasfa\n");

fd = io.open("aaa.txt", "w+");
fd:write("aaaa\n");

fd:seek("set");

str = fd:read();
print(str);

--
-- io.close(fd);
fd:close();
