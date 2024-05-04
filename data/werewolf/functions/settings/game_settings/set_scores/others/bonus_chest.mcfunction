# 効果音を再生
playsound ui.button.click master @s ~ ~ ~ 1 1

# スコアを設定
scoreboard players add #ボーナスチェスト settings 1
execute if score #ボーナスチェスト settings matches 10 run scoreboard players reset #ボーナスチェスト settings

# 関数を実行
function werewolf:settings/game_settings/other_settings