# 効果音を再生
playsound ui.button.click master @s ~ ~ ~ 1 1

# スコアを設定
scoreboard players add 占い師 settings 1
execute if score 占い師 settings matches 2 run scoreboard players reset 占い師 settings

# 関数を実行
function werewolf:settings/game_settings/role_settings