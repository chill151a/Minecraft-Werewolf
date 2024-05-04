## スナイパーの処理

#弾丸を召喚
execute as @a[scores={sniper=1..,snipe_mode=1},nbt={Inventory:[{components:{"minecraft:custom_data":{sniper:1}}}]}] at @s if block ^ ^1.5 ^0.5 #werewolf:can_through positioned ^ ^1.5 ^4 run function werewolf:items/sniper/bullet

#発射音を再生
execute at @a[scores={sniper=1..,snipe_mode=1},nbt={Inventory:[{components:{"minecraft:custom_data":{sniper:1}}}]}] run playsound entity.generic.explode master @a ~ ~ ~ 5 2

#矢をキル
execute at @a[scores={sniper=1..,snipe_mode=1},nbt={Inventory:[{components:{"minecraft:custom_data":{sniper:1}}}]}] run kill @e[type=arrow,distance=..3,nbt={inGround:false}]

#スコアをセット
scoreboard players set @a sniper 0