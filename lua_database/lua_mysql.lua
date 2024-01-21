
-- 引入包
local luasql = require("luasql.mysql");

-- 建立句柄
client = luasql.mysql();
-- print(client);

-- 创建链接          数据库名  用户名 密码   IP          PORT
conn = client:connect("test_db", "root", "", "127.0.0.1", "3306");

if conn == nil then
	print("连接失败");
	os.exit();
end

-- 执行sql语句
ret = conn:execute("select * from Stu");
-- 获取数据
row = ret:fetch({}, "a");
-- print(row.id, row.age, row.name, row.score);

while row do
  print(row.id, row.age, row.name, row.score);

	row = ret:fetch(row, "a");
end

conn:close();
client:close();



