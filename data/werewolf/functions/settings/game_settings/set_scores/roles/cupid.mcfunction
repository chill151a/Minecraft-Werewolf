# 効果音を再生
playsound ui.button.click master @s ~ ~ ~ 1 1

# スコアを設定
scoreboard players add キューピット settings 1
execute if score キューピット settings matches 2 run scoreboard players reset キューピット settings

# 関数を実行
function werewolf:settings/game_settings/role_settings