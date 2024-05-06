## 弾丸を召喚

#AECを召喚
summon area_effect_cloud ~ ~1.5 ~ {Tags:["sniper_bullet"]}

#AECの向きを編集
data modify entity @e[tag=sniper_bullet,sort=nearest,limit=1] Rotation set from entity @s Rotation

#発砲音を再生
playsound entity.generic.explode master @a ~ ~ ~ 5 2

#矢をキル
kill @e[type=arrow,distance=..3,nbt={inGround:false}]

#弾丸を移動させる
execute as @e[tag=sniper_bullet,sort=nearest,limit=1] at @s run function werewolf:items/sniper/move_bullet