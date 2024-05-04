## 占い師の処理

#結果を送信
execute if entity @p[team=survivor,distance=0.1..1.5,scores={role_number=1..9}] run tellraw @s [{"selector":"@p[team=survivor,distance=0.1..1.5]","color":"red"},{"text":"は人狼です"}]
execute if entity @p[team=survivor,distance=0.1..1.5,scores={role_number=10..}] run tellraw @s [{"selector":"@p[team=survivor,distance=0.1..1.5]","color":"green"},{"text":"は人狼ではありません"}]

#偽の結果を送信
execute unless entity @s[scores={role_number=16}] run tellraw @s [{"selector":"@p[team=survivor,distance=0.1..1.5]","color":"green"},{"text":"は人狼ではありません"}]

#効果音を再生
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1

#スコアを減算
scoreboard players remove @s abilities 1