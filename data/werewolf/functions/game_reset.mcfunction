## リセットの処理

#スコアを設定
scoreboard players set #days settings 0
scoreboard players set @a clicked_carrot_stick 0
scoreboard players set @a death_count 0
scoreboard players set @a ender_pearl 0
scoreboard players set @a glowing_powder 0
scoreboard players set @a blindness_powder 0
scoreboard players set @a lucky_amulet 0
scoreboard players set @a predation_amulet 0
scoreboard players set @a silence_clock 0
scoreboard players set @a smoke_launcher 0
scoreboard players set @a magic_snowball 0
scoreboard players set @a silence_clock_duration 0
scoreboard players reset @a role_number

#ボスバーを削除
bossbar remove day_time
bossbar remove night_time

#スケジュールをクリア
schedule clear werewolf:system/day_cycle/decrease_day_time
schedule clear werewolf:system/day_cycle/decrease_night_time

#属性を設定
execute as @a run attribute @s generic.armor base set 0
execute as @a run attribute @s generic.attack_speed base set 4

#チェストを破壊
function werewolf:system/bonus_chest/break_chest

#エンティティをキル
kill @e[type=arrow]
kill @e[type=item]
kill @e[type=area_effect_cloud]
kill @e[tag=deadbody]

#その他
clear @a
effect clear @a
effect give @a saturation 1 255 true
effect give @a instant_health 1 100 true
team leave @a
gamemode adventure @a