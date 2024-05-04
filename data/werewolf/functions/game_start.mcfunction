## ゲーム開始時の処理

#効果音を再生
execute as @a at @s run playsound entity.generic.explode master @s ~ ~ ~ 1 1.2

#スコアをセット
scoreboard players set #game_enabled settings 1

#関数を実行
function werewolf:reset
function werewolf:start/main