## 昼時間を開始

#ボスバーを表示/非表示
bossbar set night_time visible false
bossbar set day_time visible true

#スコアを変更
execute unless score #day_time settings matches 1.. run scoreboard players set #remaining_day_time settings 120
execute if score #day_time settings matches 1 run scoreboard players set #remaining_day_time settings 180
execute if score #day_time settings matches 2 run scoreboard players set #remaining_day_time settings 240
scoreboard players add #days settings 1

#タイトルを表示
execute if score #days settings matches 1.. run title @a title {"text":"昼時間","color":"yellow"}
execute if score #days settings matches 1.. run title @a subtitle [{"text":"◆ ","color":"yellow"},{"score":{"objective":"settings","name":"#days"}},{"text":"日目 ◆"}]

#関数を実行
schedule function werewolf:system/day_cycle/decrease_day_time 1s

#時間を設定
time set day

#エメラルドを配布
give @a emerald 1