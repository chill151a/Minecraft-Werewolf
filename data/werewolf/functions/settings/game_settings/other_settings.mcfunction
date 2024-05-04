# 効果音を再生
playsound ui.button.click master @s ~ ~ ~ 1 1

# 価格設定を表示
tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n【 "},{"text":"その他","color":"green","bold":true},{"text":"の設定 】\n"}]

execute unless score #day_time settings matches 1.. run tellraw @s [{"text":"◆ 昼の時間: > ["},{"text":"120秒","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/others/day_time"}},{"text":"] <"}]
execute if score #day_time settings matches 1 run tellraw @s [{"text":"◆ 昼の時間: > ["},{"text":"180秒","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/others/day_time"}},{"text":"] <"}]
execute if score #day_time settings matches 2 run tellraw @s [{"text":"◆ 昼の時間: > ["},{"text":"240秒","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/others/day_time"}},{"text":"] <"}]
execute unless score #night_time settings matches 1.. run tellraw @s [{"text":"◆ 夜の時間: > ["},{"text":"120秒","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/others/night_time"}},{"text":"] <"}]
execute if score #night_time settings matches 1 run tellraw @s [{"text":"◆ 夜の時間: > ["},{"text":"180秒","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/others/night_time"}},{"text":"] <"}]
execute if score #night_time settings matches 2 run tellraw @s [{"text":"◆ 夜の時間: > ["},{"text":"240秒","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/others/night_time"}},{"text":"] <"}]
execute unless score #投票機能 settings matches 1.. run tellraw @s [{"text":"◆ 投票機能: > ["},{"text":"オフ","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/others/vote"}},{"text":"] <"}]
execute if score #投票機能 settings matches 1 run tellraw @s [{"text":"◆ 投票機能: > ["},{"text":"オン","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/others/vote"}},{"text":"] <"}]
execute unless score #ボーナスチェスト settings matches 1.. run tellraw @s [{"text":"◆ ﾎﾞｰﾅｽﾁｪｽﾄの設置確率: > ["},{"text":"10%","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/others/bonus_chest"}},{"text":"] <"}]
execute if score #ボーナスチェスト settings matches 1 run tellraw @s [{"text":"◆ ﾎﾞｰﾅｽﾁｪｽﾄの設置確率: > ["},{"text":"20%","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/others/bonus_chest"}},{"text":"] <"}]
execute if score #ボーナスチェスト settings matches 2 run tellraw @s [{"text":"◆ ﾎﾞｰﾅｽﾁｪｽﾄの設置確率: > ["},{"text":"30%","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/others/bonus_chest"}},{"text":"] <"}]
execute if score #ボーナスチェスト settings matches 3 run tellraw @s [{"text":"◆ ﾎﾞｰﾅｽﾁｪｽﾄの設置確率: > ["},{"text":"40%","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/others/bonus_chest"}},{"text":"] <"}]
execute if score #ボーナスチェスト settings matches 4 run tellraw @s [{"text":"◆ ﾎﾞｰﾅｽﾁｪｽﾄの設置確率: > ["},{"text":"50%","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/others/bonus_chest"}},{"text":"] <"}]
execute if score #ボーナスチェスト settings matches 5 run tellraw @s [{"text":"◆ ﾎﾞｰﾅｽﾁｪｽﾄの設置確率: > ["},{"text":"60%","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/others/bonus_chest"}},{"text":"] <"}]
execute if score #ボーナスチェスト settings matches 6 run tellraw @s [{"text":"◆ ﾎﾞｰﾅｽﾁｪｽﾄの設置確率: > ["},{"text":"70%","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/others/bonus_chest"}},{"text":"] <"}]
execute if score #ボーナスチェスト settings matches 7 run tellraw @s [{"text":"◆ ﾎﾞｰﾅｽﾁｪｽﾄの設置確率: > ["},{"text":"80%","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/others/bonus_chest"}},{"text":"] <"}]
execute if score #ボーナスチェスト settings matches 8 run tellraw @s [{"text":"◆ ﾎﾞｰﾅｽﾁｪｽﾄの設置確率: > ["},{"text":"90%","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/others/bonus_chest"}},{"text":"] <"}]
execute if score #ボーナスチェスト settings matches 9 run tellraw @s [{"text":"◆ ﾎﾞｰﾅｽﾁｪｽﾄの設置確率: > ["},{"text":"100%","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/others/bonus_chest"}},{"text":"] <"}]

tellraw @s [{"text":"← 前のページ: > ["},{"text":"開く","color":"aqua","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/menu"}},{"text":"] <"}]