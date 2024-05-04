## キューピットの処理

#結果を送信
execute unless entity @p[tag=lovers] run tellraw @s [{"selector":"@p[tag=!lovers,team=survivor,distance=0.1..1.5]","color":"light_purple"},{"text":"を恋人候補にしました"},{"text":"\n※もう一人の恋人候補ができるまで恋人にはなりません","color":"gray"}]
execute if entity @p[tag=lovers] run tellraw @s [{"selector":"@p[tag=lovers]","color":"light_purple"},{"text":"と"},{"selector":"@p[team=survivor,distance=0.1..1.5]"},{"text":"を恋人にしました"},{"text":"\n※恋人が死亡するとあなたも後追いで死亡します","color":"gray"}]
execute if entity @p[tag=lovers] run tellraw @p[tag=lovers] [{"text":"あなたと","color":"light_purple"},{"selector":"@p[team=survivor,distance=0.1..1.5]"},{"text":"は恋人になりました"},{"text":"\n※相方が死亡するとあなたも後追いで死亡します","color":"gray"}]
execute if entity @p[tag=lovers] run tellraw @p[team=survivor,distance=0.1..1.5] [{"text":"あなたと","color":"light_purple"},{"selector":"@p[tag=lovers]"},{"text":"は恋人になりました"},{"text":"\n※相方が死亡するとあなたも後追いで死亡します","color":"gray"}]

#役職を変更
execute if entity @p[tag=lovers] run scoreboard players set @p[tag=lovers] role_number 26
execute if entity @p[tag=lovers] run scoreboard players set @p[team=survivor,distance=0.1..1.5] role_number 26
execute if entity @p[tag=lovers] run scoreboard players set @p[tag=lovers] role_book 26
execute if entity @p[tag=lovers] run scoreboard players set @p[team=survivor,distance=0.1..1.5] role_book 26
execute unless entity @p[tag=lovers] run tag @p[team=survivor,distance=0.1..1.5] add lovers

#効果音を再生
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1

#スコアを減算
scoreboard players remove @s abilities 1