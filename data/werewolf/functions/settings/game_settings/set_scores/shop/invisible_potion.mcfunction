# 効果音を再生
playsound ui.button.click master @s ~ ~ ~ 1 1

# スコアを設定
scoreboard players add #透明化のポーション settings 1
execute if score #透明化のポーション settings matches 4 run scoreboard players reset #透明化のポーション settings

# 関数を実行
function werewolf:settings/game_settings/shop_settings