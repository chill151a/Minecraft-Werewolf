## スナイパーの処理

#弾丸を召喚
execute as @a[scores={used_sniper=1..},nbt={SelectedItem:{components:{"minecraft:custom_data":{sniper:1}}}}] at @s run function werewolf:items/sniper/summon_bullet

#スコアをセット
scoreboard players set @a used_sniper 0