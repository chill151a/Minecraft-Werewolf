## 死体を生成

#防具立てを召喚
summon armor_stand ~ ~-1.2 ~ {Tags:["deadbody"],Pose:{Head:[270f,0f,0f]},Passengers:[{id:"minecraft:item",Item:{id:"minecraft:stone",Count:1b},PickupDelay:1000s,Age:5999}],Marker:true,Invisible:true}

#スコアをセット
execute if entity @s[scores={role_number=1..9}] run scoreboard players set @e[type=armor_stand,tag=deadbody,sort=nearest,limit=1,nbt={Passengers:[{id:"minecraft:item"}],ArmorItems:[{},{},{},{}]}] role_number 1
execute if entity @s[scores={role_number=10..}] run scoreboard players set @e[type=armor_stand,tag=deadbody,sort=nearest,limit=1,nbt={Passengers:[{id:"minecraft:item"}],ArmorItems:[{},{},{},{}]}] role_number 2

#防具立てに死者の頭を被らせる
loot replace entity @e[type=armor_stand,tag=deadbody,sort=nearest,limit=1,nbt={Passengers:[{id:"minecraft:item"}],ArmorItems:[{},{},{},{}]}] armor.head loot werewolf:player_head