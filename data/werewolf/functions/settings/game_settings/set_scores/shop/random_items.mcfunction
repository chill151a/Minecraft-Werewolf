# 効果音を再生
playsound ui.button.click master @s ~ ~ ~ 1 1

# スコアを設定
scoreboard players add #ランダムアイテム settings 1
execute if score #ランダムアイテム settings matches 4 run scoreboard players reset #ランダムアイテム settings

# 関数を実行
function werewolf:settings/game_settings/shop_settings