-- Table
----------
-- 表是 Lua 中唯一的复合类型
-- 像 PHP 中的数组或 Javascript 中的 Object 一样
-- 可用作 list/dict/map
 
-- 默认以字符串作为 key
t = {key1 = 'value1', key2 = false}
-- 像 Javascript 一样以 . 取值
print(t.key1) --> "value1"
t.key3 = {} -- 加入新的键值对
t.key2 = nil -- 销毁一组键值对
print(t.key3)
print(t.key2)

-- 理论上任何非 nil 的变量都可以作为 key
u = {['@!#'] = 'qbert', [{}] = 1729, [6.28] = 'tau'}
print(u[6.28])  --> "tau"
a = u['@!#'] -- a = 'qbert'
b = u[{}] -- b = nil；像 Javascript 一样 {} 会创建新的对象
          -- 因此不要用蛋疼的 key 值，老老实实用字串或数字

-- 同字符串一样，只有一个表作为函数的参数时可以省略括号
-- 为了一个括号增加阅读难度，得不偿失
function h(x) print(x.key1) end
h{key1 = 'Sonmi~451'}  --> "Sonmi~451"
 
for key, val in pairs(u) do  -- 像 Python  一样的键值迭代
    print(key, val)
end

-- 像 Javascript 一样的全局作用域 _G
print(_G['_G'] == _G) --> true
 
-- 省略 key 之后即可变身为 list
-- 实际上是以递增自然数为 key
v = {'value1', 'value2', 1.21, 'gigawatts'}
for i = 1, #v do  -- 像 Bash 一样，#v 表示列表长度
    print(v[i])  -- 像 Matlab 一样，列表索引从 1 开始
end
