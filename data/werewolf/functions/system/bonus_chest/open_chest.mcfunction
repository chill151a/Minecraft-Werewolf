# エメラルドを召喚
execute as @e[type=interaction,tag=bonus_chest] at @s on target run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",Count:1b},PickupDelay:20s}

# 確率でエメラルドを追加で召喚
execute if predicate werewolf:random_chance/25 as @e[type=interaction,tag=bonus_chest] at @s on target run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",Count:1b},PickupDelay:20s}

# 効果音を再生
execute as @e[type=interaction,tag=bonus_chest] at @s on target run playsound entity.item.pickup master @a ~ ~ ~ 1 1

# パーティクルを表示
execute as @e[type=interaction,tag=bonus_chest] at @s on target run particle cloud ~ ~0.5 ~ 0 0 0 0.01 3

# ボーナスチェストをキル
execute as @e[type=interaction,tag=bonus_chest] at @s on target run kill @e[type=item_display,tag=bonus_chest,sort=nearest,limit=1]
execute as @e[type=interaction,tag=bonus_chest] at @s on target run kill @e[type=interaction,tag=bonus_chest,sort=nearest,limit=1]

# 進捗を剥奪
advancement revoke @s only werewolf:bonus_chest