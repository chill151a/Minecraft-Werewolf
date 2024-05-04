## 怪盗の処理

#役職を強奪
scoreboard players operation @s role_number = @p[team=survivor,distance=0.1..1.5] role_number
scoreboard players operation @s role_book = @s role_number
scoreboard players set @p[team=survivor,distance=0.1..1.5] role_number 15

#結果を送信
execute if entity @s[scores={role_number=1}] run tellraw @s [{"selector":"@p[team=survivor,distance=0.1..1.5]","color":"red"},{"text":"から人狼を盗みました"}]
execute if entity @s[scores={role_number=2}] run tellraw @s [{"selector":"@p[team=survivor,distance=0.1..1.5]","color":"red"},{"text":"から忍者を盗みました"}]
execute if entity @s[scores={role_number=10}] run tellraw @s [{"selector":"@p[team=survivor,distance=0.1..1.5]","color":"red"},{"text":"から狂人を盗みました"}]
execute if entity @s[scores={role_number=11}] run tellraw @s [{"selector":"@p[team=survivor,distance=0.1..1.5]","color":"red"},{"text":"から狂信者を盗みました"}]
execute if entity @s[scores={role_number=15}] run tellraw @s [{"selector":"@p[team=survivor,distance=0.1..1.5]","color":"green"},{"text":"から村人を盗みました"}]
execute if entity @s[scores={role_number=16}] run tellraw @s [{"selector":"@p[team=survivor,distance=0.1..1.5]","color":"green"},{"text":"から占い師を盗みました"}]
execute if entity @s[scores={role_number=17}] run tellraw @s [{"selector":"@p[team=survivor,distance=0.1..1.5]","color":"green"},{"text":"から霊媒師を盗みました"}]
execute if entity @s[scores={role_number=25}] run tellraw @s [{"selector":"@p[team=survivor,distance=0.1..1.5]","color":"yellow"},{"text":"からキューピットを盗みました"}]
execute if entity @s[scores={role_number=26}] run tellraw @s [{"selector":"@p[team=survivor,distance=0.1..1.5]","color":"yellow"},{"text":"から恋人を盗みました"}]

#効果音を再生
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1

#スコアをセット
scoreboard players remove @s abilities 1