## エンダーパールの処理をします

#エンダーパールを返還
execute if entity @a[scores={silence_clock_duration=1..}] run give @a[scores={ender_pearl=1..}] ender_pearl 1

#アクションバーを表示
execute if entity @a[scores={silence_clock_duration=1..}] run tellraw @a[scores={ender_pearl=1..}] [{"text":"[!] 今は使用することができません","color":"red"}]

#スコアをセット
scoreboard players set @a ender_pearl 0