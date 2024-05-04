## ゲーム中のみ常時実行
execute if score #game_enabled settings matches 1 run function werewolf:system/skills/main
execute if score #game_enabled settings matches 1 run function werewolf:system/arrow_trail
execute if score #game_enabled settings matches 1 run function werewolf:system/dead_to_spectator
execute if score #game_enabled settings matches 1 run function werewolf:system/set_inventory
execute if score #game_enabled settings matches 1 run function werewolf:system/day_cycle/update_bossbar
execute if score #game_enabled settings matches 1 run function werewolf:items/silence_clock/main
execute if score #game_enabled settings matches 1 run function werewolf:items/magic_snowball/main
execute if score #game_enabled settings matches 1 run function werewolf:items/amulets/main
execute if score #game_enabled settings matches 1 run function werewolf:items/smoke_launcher
execute if score #game_enabled settings matches 1 run function werewolf:items/glowing_powder
execute if score #game_enabled settings matches 1 run function werewolf:items/blindness_powder
execute if score #game_enabled settings matches 1 run function werewolf:items/sniper/main
execute if score #game_enabled settings matches 1 if score #デバッグ settings matches 0 run function werewolf:system/finish/main
execute if score #game_enabled settings matches 1 as @a[nbt={Inventory:[{id:"minecraft:chest",components:{"minecraft:custom_data":{random_items:1}}}]}] at @s run function werewolf:system/random_items


## ゲーム外のみ常時実行