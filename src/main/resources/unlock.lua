---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by 86155.
--- DateTime: 2022/11/2 19:51
---
if(redis.call('get',KEYS[1])==ARGV[1]) then
    --释放锁del key
    return redis.call('del',KEYS[1])
end
return 0