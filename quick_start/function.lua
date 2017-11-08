-- Function

function fib(n)
	if n < 2 then return 1 end
	return fib(n-2) + fib(n-1)
end
fibNum = fib(5)
print(fibNum) 	--> 8

function adder(x)
	return function(y) return x + y end
end
a1 = adder(3)
a2 = adder(5)
print(a1(5))  --> 8
print(a2(8))  --> 13

-- 遇到不匹配的列表长度时
-- 过长的变量将被赋予 nil
-- 过长的值将被忽略
 
x, y, z = 1, 2, 3, 4 -- 4 将被忽略
function bar(a, b, c)
    print(a, b, c)
    return 4, 8, 15, 16, 23, 42
end
x, y = bar('zaphod')  --> "zaphod  nil nil"
-- x = 4, y = 8, 其余值被忽略

-- 函数与其他类型一样为一等公民
-- 同样有 local/global 之分
-- 像 Javascript 一样定义
function f(x) return x * x end
f = function (x) return x * x end
 
print 'Hello World!' -- 只有一个`字符串`参数时可省略括号
