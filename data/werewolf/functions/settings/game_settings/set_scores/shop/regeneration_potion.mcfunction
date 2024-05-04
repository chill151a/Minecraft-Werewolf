# 効果音を再生
playsound ui.button.click master @s ~ ~ ~ 1 1

# スコアを設定
scoreboard players add #再生のポーション settings 1
execute if score #再生のポーション settings matches 3 run scoreboard players reset #再生のポーション settings

# 関数を実行
function werewolf:settings/game_settings/shop_settings