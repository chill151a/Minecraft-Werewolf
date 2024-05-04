## 時計の処理

#時計を返却
execute if entity @a[scores={silence_clock_duration=1..}] run give @a[scores={silence_clock=1..},predicate=werewolf:sneak/true] clock 1
execute if entity @a[scores={silence_clock_duration=1..}] run title @a[scores={silence_clock=1..},predicate=werewolf:sneak/true] actionbar {"text":"現在使用不可","color":"red"}

#スコアをセット
execute unless entity @a[scores={silence_clock_duration=1..}] run scoreboard players set @a[scores={silence_clock=1..},predicate=werewolf:sneak/true] silence_clock_duration 180

#時間停止のカウントダウン
execute if entity @a[scores={silence_clock_duration=180}] run function werewolf:items/silence_clock/countdown_1
execute if entity @a[scores={silence_clock_duration=140}] run function werewolf:items/silence_clock/countdown_2

#時間停止を開始
execute if entity @a[scores={silence_clock_duration=100}] run function werewolf:items/silence_clock/start

#時間停止を終了
execute if entity @a[scores={silence_clock_duration=1}] run function werewolf:items/silence_clock/finish

#移動+視点移動を不可能に
execute as @e[type=area_effect_cloud,tag=NoAction] at @s run tp @p[team=!spectator,sort=nearest,distance=..1] @s

#時計をキル
execute at @a[scores={silence_clock=1..},predicate=werewolf:sneak/true] run kill @e[nbt={Item:{id:"minecraft:clock"}},distance=..3]

#スコアを変更
scoreboard players remove @a[scores={silence_clock_duration=1..}] silence_clock_duration 1
scoreboard players set @a silence_clock 0