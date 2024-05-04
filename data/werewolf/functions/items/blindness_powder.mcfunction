## 盲目の粉の処理

#盲目を付与
execute unless score #盲目の粉 settings matches 1.. if entity @a[scores={blindness_powder=1..},predicate=werewolf:sneak/true] run effect give @a[scores={blindness_powder=0}] blindness 10 0 true
execute if score #盲目の粉 settings matches 1 if entity @a[scores={blindness_powder=1..},predicate=werewolf:sneak/true] run effect give @a[scores={blindness_powder=0}] blindness 15 0 true
execute if score #盲目の粉 settings matches 2 if entity @a[scores={blindness_powder=1..},predicate=werewolf:sneak/true] run effect give @a[scores={blindness_powder=0}] blindness 20 0 true

#通知を送信
execute if entity @a[scores={blindness_powder=1..},predicate=werewolf:sneak/true] run title @a title [{"text":"視界","color":"yellow"},{"text":"が奪われた","color":"white"}]

#効果音を再生
execute if entity @a[scores={blindness_powder=1..},predicate=werewolf:sneak/true] as @a at @s run playsound entity.wither.shoot master @s ~ ~ ~ 2 0.75

#アイテムをキル
execute at @a[scores={blindness_powder=1..},predicate=werewolf:sneak/true] run kill @e[nbt={Item:{id:"minecraft:gunpowder"}},distance=..3,limit=1]

#スコアをセット
scoreboard players set @a blindness_powder 0