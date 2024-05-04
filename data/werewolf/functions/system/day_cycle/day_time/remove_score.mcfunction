## 昼時間が1秒減少

#スコアを減算
scoreboard players remove #remaining_day_time settings 1

#夜時間に切り替え
execute if score #remaining_day_time settings matches 0 run function werewolf:system/day_cycle/day_time/set_time

#関数を再実行
execute if score #remaining_day_time settings matches 1.. run schedule function werewolf:system/day_cycle/day_time/remove_score 1s