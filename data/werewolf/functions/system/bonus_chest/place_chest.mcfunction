# アイテム表示エンティティを召喚
summon minecraft:item_display ~ ~0.25 ~ {item:{id:"minecraft:chest",Count:1b},item_display:fixed,Tags:["bonus_chest"]}
data modify entity @e[type=item_display,tag=bonus_chest,sort=nearest,limit=1] Rotation set from entity @s Rotation

# 判定用エンティティを召喚
summon minecraft:interaction ~ ~ ~ {width:0.5f,height:0.5f,Tags:["bonus_chest"]}

# 効果音を再生
playsound block.wood.place master @a ~ ~ ~ 2 1.2

# パーティクルを表示
particle cloud ~ ~0.6 ~ 0 0 0 0.01 3