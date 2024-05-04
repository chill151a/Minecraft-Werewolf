## 能力の処理

#ガイドを表示
execute as @a[scores={role_book=16},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] at @s if entity @p[team=survivor,distance=0.1..1.5] run title @s actionbar [{"text":"["},{"keybind":"key.use"},{"text":"]  "},{"selector":"@a[tag=!lovers,team=survivor,distance=0.1..1.5,sort=nearest,limit=1]"},{"text":"を占う  残り"},{"score":{"objective":"abilities","name":"@s"}},{"text":"回"}]
execute as @a[scores={role_book=17},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] at @s if entity @e[tag=deadbody,distance=0.1..1.5] run title @s actionbar [{"text":"["},{"keybind":"key.use"},{"text":"]  "},{"text":"この死体を占う  残り"},{"score":{"objective":"abilities","name":"@s"}},{"text":"回"}]
execute as @a[scores={role_book=25},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] at @s if entity @p[tag=!lovers,team=survivor,distance=0.1..1.5] run title @s actionbar [{"text":"["},{"keybind":"key.use"},{"text":"]  "},{"selector":"@p[tag=!lovers,team=survivor,distance=0.1..1.5]"},{"text":"を恋人にする  残り"},{"score":{"objective":"abilities","name":"@s"}},{"text":"回"}]
execute as @a[scores={role_book=27},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] at @s if entity @p[team=survivor,distance=0.1..1.5] run title @s actionbar [{"text":"["},{"keybind":"key.use"},{"text":"]  "},{"selector":"@p[team=survivor,distance=0.1..1.5]"},{"text":"の役職を奪う  残り"},{"score":{"objective":"abilities","name":"@s"}},{"text":"回"}]

#能力を使用
execute as @a[scores={role_number=2,ninja_kill_count=1..}] at @s run function werewolf:system/skills/passive_skills/ninja
execute as @a[scores={role_book=16,clicked_carrot_stick=1..,abilities=1..}] at @s if entity @p[team=survivor,distance=0.1..1.5] run function werewolf:system/skills/active_skill/sseer
execute as @a[scores={role_book=17,clicked_carrot_stick=1..,abilities=1..}] at @s if entity @e[tag=deadbody,distance=0.1..1.5] run function werewolf:system/skills/active_skills/medium
execute as @a[scores={role_book=25,clicked_carrot_stick=1..,abilities=1..}] at @s if entity @p[tag=!lovers,team=survivor,distance=0.1..1.5] run function werewolf:system/skills/active_skills/cupid
execute as @a[scores={role_book=27,clicked_carrot_stick=1..,abilities=1..}] at @s if entity @p[team=survivor,distance=0.1..1.5] run function werewolf:system/skills/active_skills/thief

#スコアをセット
scoreboard players set @a clicked_carrot_stick 0
scoreboard players set @a ninja_kill_count 0