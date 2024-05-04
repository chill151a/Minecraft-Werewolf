## ゲーム停止時の処理

#タイトルを表示
title @a title "ゲーム停止"

#スコアをセット
scoreboard players set #game_enabled settings 0

#関数を実行
function werewolf:game_reset