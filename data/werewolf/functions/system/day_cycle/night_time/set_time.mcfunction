# ボスバーを表示/非表示
bossbar set day_time visible false
bossbar set night_time visible true

# スコアをセット
execute unless score #night_time settings matches 1.. run scoreboard players set #remaining_night_time settings 120
execute if score #night_time settings matches 1 run scoreboard players set #remaining_night_time settings 180
execute if score #night_time settings matches 2 run scoreboard players set #remaining_night_time settings 240

# タイトルを表示
title @a title {"text":"夜時間","color":"blue"}
title @a subtitle [{"text":"◆ ","color":"blue"},{"score":{"objective":"settings","name":"#days"}},{"text":"日目 ◆"}]

# 関数を実行
schedule function werewolf:system/day_cycle/night_time/remove_score 1s

# 時間を設定
time set midnight

# エメラルドを配布
give @a emerald 1

# ボーナスチェストを破壊
function werewolf:system/bonus_chest/break_chest

# ボーナスチェストを設置
execute unless score #ボーナスチェスト settings matches 1.. as @e[type=armor_stand,tag=bonus_chest] at @s if predicate werewolf:random_chance/10 run function werewolf:system/bonus_chest/place_chest
execute if score #ボーナスチェスト settings matches 1 as @e[type=armor_stand,tag=bonus_chest] at @s if predicate werewolf:random_chance/20 run function werewolf:system/bonus_chest/place_chest
execute if score #ボーナスチェスト settings matches 2 as @e[type=armor_stand,tag=bonus_chest] at @s if predicate werewolf:random_chance/30 run function werewolf:system/bonus_chest/place_chest
execute if score #ボーナスチェスト settings matches 3 as @e[type=armor_stand,tag=bonus_chest] at @s if predicate werewolf:random_chance/40 run function werewolf:system/bonus_chest/place_chest
execute if score #ボーナスチェスト settings matches 4 as @e[type=armor_stand,tag=bonus_chest] at @s if predicate werewolf:random_chance/50 run function werewolf:system/bonus_chest/place_chest
execute if score #ボーナスチェスト settings matches 5 as @e[type=armor_stand,tag=bonus_chest] at @s if predicate werewolf:random_chance/60 run function werewolf:system/bonus_chest/place_chest
execute if score #ボーナスチェスト settings matches 6 as @e[type=armor_stand,tag=bonus_chest] at @s if predicate werewolf:random_chance/70 run function werewolf:system/bonus_chest/place_chest
execute if score #ボーナスチェスト settings matches 7 as @e[type=armor_stand,tag=bonus_chest] at @s if predicate werewolf:random_chance/80 run function werewolf:system/bonus_chest/place_chest
execute if score #ボーナスチェスト settings matches 8 as @e[type=armor_stand,tag=bonus_chest] at @s if predicate werewolf:random_chance/90 run function werewolf:system/bonus_chest/place_chest
execute if score #ボーナスチェスト settings matches 9 as @e[type=armor_stand,tag=bonus_chest] at @s run function werewolf:system/bonus_chest/place_chest