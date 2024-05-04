## 発光の粉の処理

#発光を付与
execute unless score #発光の粉 settings matches 1.. if entity @a[scores={glowing_powder=1..},predicate=werewolf:sneak/true] run effect give @a[scores={glowing_powder=0}] glowing 10 0 true
execute if score #発光の粉 settings matches 1 if entity @a[scores={glowing_powder=1..},predicate=werewolf:sneak/true] run effect give @a[scores={glowing_powder=0}] glowing 20 0 true
execute if score #発光の粉 settings matches 2 if entity @a[scores={glowing_powder=1..},predicate=werewolf:sneak/true] run effect give @a[scores={glowing_powder=0}] glowing 30 0 true

#通知を送信
execute if entity @a[scores={glowing_powder=1..},predicate=werewolf:sneak/true] run title @a title [{"text":"全員が"},{"text":"発光","color":"yellow"},{"text":"する"}]

#効果音を再生
execute if entity @a[scores={glowing_powder=1..},predicate=werewolf:sneak/true] as @a at @s run playsound block.beacon.activate master @s ~ ~ ~ 2 2

#アイテムをキル
execute at @a[scores={glowing_powder=1..},predicate=werewolf:sneak/true] run kill @e[nbt={Item:{id:"minecraft:glowstone_dust"}},distance=..3,limit=1]

#スコアをセット
scoreboard players set @a glowing_powder 0