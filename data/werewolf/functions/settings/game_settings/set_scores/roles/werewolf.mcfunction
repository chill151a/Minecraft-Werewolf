# 効果音を再生
playsound ui.button.click master @s ~ ~ ~ 1 1

# スコアを設定
scoreboard players add 人狼 settings 1
execute if score 人狼 settings matches 4 run scoreboard players reset 人狼 settings

# 関数を実行
function werewolf:settings/game_settings/role_settings