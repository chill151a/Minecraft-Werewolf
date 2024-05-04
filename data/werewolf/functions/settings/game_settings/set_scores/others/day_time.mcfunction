# 効果音を再生
playsound ui.button.click master @s ~ ~ ~ 1 1

# スコアを設定
scoreboard players add #day_time settings 1
execute if score #day_time settings matches 3 run scoreboard players reset #day_time settings

# 関数を実行
function werewolf:settings/game_settings/other_settings