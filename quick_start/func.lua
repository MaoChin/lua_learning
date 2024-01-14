function func1()
	print("sdafsad");
	return 111;
end

-- 函数类型 非常自由
function func2(a, b, c)
	print(a);
	print(b);
	print(c);
	print(type(a));
	print(type(b));
	print(type(c));
end

--func1();

func2("sss", 200, false);
