# 効果音を再生
playsound ui.button.click master @s ~ ~ ~ 1 1

# アイテム設定を表示
tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n【 "},{"text":"アイテム","color":"aqua","bold":true},{"text":"設定 】\n"}]

execute unless score #発光の粉 settings matches 1.. run tellraw @s [{"text":"◆ 発光の粉の持続時間: > ["},{"text":"10秒","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/items/glowing_powder"}},{"text":"] <"}]
execute if score #発光の粉 settings matches 1 run tellraw @s [{"text":"◆ 発光の粉の持続時間: > ["},{"text":"20秒","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/items/glowing_powder"}},{"text":"] <"}]
execute if score #発光の粉 settings matches 2 run tellraw @s [{"text":"◆ 発光の粉の持続時間: > ["},{"text":"30秒","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/items/glowing_powder"}},{"text":"] <"}]
execute unless score #盲目の粉 settings matches 1.. run tellraw @s [{"text":"◆ 盲目の粉の持続時間: > ["},{"text":"10秒","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/items/blindness_powder"}},{"text":"] <"}]
execute if score #盲目の粉 settings matches 1 run tellraw @s [{"text":"◆ 盲目の粉の持続時間: > ["},{"text":"15秒","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/items/blindness_powder"}},{"text":"] <"}]
execute if score #盲目の粉 settings matches 2 run tellraw @s [{"text":"◆ 盲目の粉の持続時間: > ["},{"text":"20秒","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/items/blindness_powder"}},{"text":"] <"}]
execute unless score #スモークランチャー settings matches 1.. run tellraw @s [{"text":"◆ スモークの持続時間: > ["},{"text":"5秒","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/items/smoke_launcher"}},{"text":"] <"}]
execute if score #スモークランチャー settings matches 1 run tellraw @s [{"text":"◆ スモークの持続時間: > ["},{"text":"10秒","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/items/smoke_launcher"}},{"text":"] <"}]
execute if score #スモークランチャー settings matches 2 run tellraw @s [{"text":"◆ スモークの持続時間: > ["},{"text":"15秒","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/items/smoke_launcher"}},{"text":"] <"}]

tellraw @s [{"text":"← 前のページ: > ["},{"text":"開く","color":"aqua","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/menu"}},{"text":"] <"}]