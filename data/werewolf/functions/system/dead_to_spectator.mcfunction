#後追い
execute if entity @a[scores={death_count=1..,role_number=26}] run kill @a[scores={role_number=25..26},team=survivor]

#死者を観戦者に
team join spectator @a[scores={death_count=1..}]
gamemode spectator @a[team=spectator]

#死亡場所をスポーン地点に
execute as @a[scores={death_count=1..}] at @s run spawnpoint @s ~ ~ ~

#死体を生成
execute as @a[scores={death_count=1..}] at @s run function werewolf:system/create_deadbody

#スコアをセット
scoreboard players set @a death_count 0