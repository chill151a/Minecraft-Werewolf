## 霊媒師の処理

#結果を送信
execute if entity @e[tag=deadbody,distance=0.1..1.5,scores={role_number=1},sort=nearest,limit=1] run tellraw @s [{"text":"この死体は人狼です","color":"red"}]
execute if entity @e[tag=deadbody,distance=0.1..1.5,scores={role_number=2},sort=nearest,limit=1] run tellraw @s [{"text":"この死体は人狼ではありません","color":"green"}]

#偽の結果を送信
execute unless entity @s[scores={role_number=17}] run tellraw @s [{"text":"この死体は人狼ではありません","color":"green"}]

#効果音を再生
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1

#スコアを減算
scoreboard players remove @s abilities 1