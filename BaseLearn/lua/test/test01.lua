---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by learnzpk.
--- DateTime: 2019-06-17 15:39
---


--- table
tab1 = { key1 = "val1", key2 = "val2", "val3" }
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end

tab1.key1 = nil
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end

print('test pairs and ipairs')
local t = {
    [1] = 1,
    2,
    [3] = 3,
    4,
    [5] = 5,
    [6] = 6,
    ['a'] = 7
}

for k, v in ipairs(t) do
    print("ipairs  " .. k .. "-" .. v)
end

for k, v in pairs(t) do
    print("pairs  " .. k .. "-" .. v)
end

--- function
function factorial1(n)
    if n == 0 then
        return 1
    else
        return n * factorial1(n - 1)
    end
end
print(factorial1(5))
factorial2 = factorial1
print(factorial2(5))

--- 匿名函数
function testFun(tab, fun)
    for k, v in pairs(tab) do
        print(fun(k, v))
    end
end

testFun(
        { 1, 2 },
        function(key, val)
            return key .. "=" .. val;
        end
)

--- 变量
print(c, d)
function joke()
    c = 5;
    local d = 6;
end
print(c, d)
joke()
print(c, d)

print(_G['c'])

--- 循环
i = 0
while (i < 10)
do
    i = i + 1
    print("while" .. i)
end

for i = 10, 1, -1
do
    print("for" .. i)
end

function f(x)
    return x * 2
end
for i = 1, f(4), 3 do
    print(i)
end

--- 流程控制
a = 2
if (a == 0) then
    print("a为0")
elseif (a == 1) then
    print("a为1")
else
    print("a不为0或1")
end

--- 函数可变参数
function average(...)
    local result = 0
    print(...)
    for k, v in ipairs({ ... }) do
        result = result + v
    end
    -- return result / #{...}
    return result / select('#', ...)
end

print("平均值为" .. average(6, 7, 8, 2, 5, 4, 3))