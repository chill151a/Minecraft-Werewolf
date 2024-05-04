# ボスバーの残量を更新
execute store result bossbar day_time value run scoreboard players get #remaining_day_time settings
execute store result bossbar night_time value run scoreboard players get #remaining_night_time settings

# ボスバーの名前を更新
bossbar set day_time name [{"text":"["},{"score":{"objective":"settings","name":"#days"}},{"text":"日目]  昼  残り"},{"score":{"objective":"settings","name":"#remaining_day_time"}},{"text":"秒"}]
bossbar set night_time name [{"text":"["},{"score":{"objective":"settings","name":"#days"}},{"text":"日目]  夜  残り"},{"score":{"objective":"settings","name":"#remaining_night_time"}},{"text":"秒"}]