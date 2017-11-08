-- Flow Control
num = 25
while num < 50 do
	num = num + 1
end
print(num)

-- IF 条件开关
num = 20
--s = 'aspython'
if num > 40 then
    print('> 40')
elseif s ~= 'aspython' then -- ~= 表示 !=
    io.write('s is not aspython \n') -- 风骚的标准输出
else
    thisIsGlobal = 5 -- 驼峰式命名
    -- 显示声明局部变量（像 Javascript 一样）
    local line = io.read()

    -- .. 作为字符串连接符
    print('凛冬将至' .. line)
end

-- 引用未定义变量将返回 nil ，这不是错误
foo = anUnknownVariable  -- 等价于 foo = nil
print(foo)

aBoolValue = false
-- 只有 nil 与 false 为逻辑假； 数字 0 与空字串 '' 为真！
if not aBoolValue then print('false') end

-- 像 Python 一样运用 'or' 和 'and'
-- 得到 C 语言中 a ? b : c 的效果；需注意 b = false 或 nil 的情况
ans = aBoolValue and 'yes' or 'no'
print(ans)
ans = aBoolValue and 'hehe' or 'haha'
print(ans)

karlSum = 0
for i = 1, 100 do -- 像 Matlab 一样的递增语法，包括两端，如同数学中[1, 100]
    karlSum = karlSum + i
end
print(karlSum)
karlStr = ''
for i = 1, 10 do 
	karlStr = karlStr..'_.'
end
print(karlStr)

-- Step 为 2 递减的方式 '100, 1, -2'
for j = 10, 1, -2 do print(j) end

-- 综上，范围可表示为 "begin, end [, step]"

-- 另一个循环控制
num = 6
repeat
    print('Are you OK?')
    num = num - 1
until num == 0

count = 0
repeat
   	print('haha')
	count = count + 1
until count == 6
