# 効果音を再生
execute as @a at @s run playsound block.bell.use master @s ~ ~ ~ 2 0

# パーティクルを表示
execute as @a at @s run particle minecraft:end_rod ~ ~1.5 ~ 0 0 0 1 300 normal @s

# エフェクトを付与
execute as @a[team=!spectator] unless entity @s[scores={silence_clock_duration=1..100}] run effect give @s darkness 6 0

# AECを召喚
execute as @a[team=!spectator] at @s unless entity @s[scores={silence_clock_duration=1..100}] run summon area_effect_cloud ~ ~ ~ {Tags:["NoAction"],Duration:100}

# AECのRotationを変更
execute as @e[type=area_effect_cloud,tag=NoAction] at @s run data modify entity @s Rotation set from entity @a[sort=nearest,limit=1] Rotation