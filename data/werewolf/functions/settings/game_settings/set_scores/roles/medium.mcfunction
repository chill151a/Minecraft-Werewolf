# 効果音を再生
playsound ui.button.click master @s ~ ~ ~ 1 1

# スコアを設定
scoreboard players add 霊媒師 settings 1
execute if score 霊媒師 settings matches 2 run scoreboard players reset 霊媒師 settings

# 関数を実行
function werewolf:settings/game_settings/role_settings