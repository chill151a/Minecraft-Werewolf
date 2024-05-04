# 一時的にマーカーを召喚
execute at @a[scores={magic_snowball=1..}] run summon marker ~ ~ ~ {Tags:["tmp"]}

# AECを召喚
execute as @e[type=marker,tag=tmp] at @s unless entity @e[type=snowball,distance=..3] run function werewolf:items/magic_snowball/summon_aec

# マーカーのPOSに雪玉のPOSを適用
execute as @e[type=marker,tag=tmp] at @s run data modify entity @s Pos set from entity @e[type=snowball,sort=nearest,limit=1] Pos

# スコアを加算
scoreboard players add @e[type=area_effect_cloud,tag=magic_snowball] magic_snowball 1

# パーティクルを表示
execute as @e[type=area_effect_cloud,scores={magic_snowball=1..}] at @s run function werewolf:items/magic_snowball/show_particle

# 爆発を発生させる
execute as @e[type=area_effect_cloud,scores={magic_snowball=63}] at @s run function werewolf:items/magic_snowball/explosion

# スコアを変更
scoreboard players set @e[type=area_effect_cloud,scores={magic_snowball=63}] magic_snowball 60
scoreboard players set @a magic_snowball 0