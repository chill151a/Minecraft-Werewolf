# 効果音を再生
playsound ui.button.click master @s ~ ~ ~ 1 1

# スコアを設定
scoreboard players add #スモークランチャー settings 1
execute if score #スモークランチャー settings matches 3 run scoreboard players reset #スモークランチャー settings

# 関数を実行
function werewolf:settings/game_settings/item_settings