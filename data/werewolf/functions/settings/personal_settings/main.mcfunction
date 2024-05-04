## 個人設定の処理

#参加設定
execute as @a[scores={clicked_carrot_stick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{participation_settings:1}}}}] at @s run function werewolf:settings/personal_settings/participation_settings

#スコアをセット
scoreboard players set @a clicked_carrot_stick 0