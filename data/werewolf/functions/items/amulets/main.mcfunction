# 防御のアミュレット
execute as @a[nbt={Inventory:[{id:"minecraft:vex_armor_trim_smithing_template"}]}] run attribute @s generic.armor base set 18
execute as @a[nbt=!{Inventory:[{id:"minecraft:vex_armor_trim_smithing_template"}]}] run attribute @s generic.armor base set 15

# 俊敏のアミュレット
execute as @a[nbt={Inventory:[{id:"minecraft:tide_armor_trim_smithing_template"}]}] run effect give @s speed 1 0 true

# 跳躍のアミュレット
execute as @a[nbt={Inventory:[{id:"minecraft:eye_armor_trim_smithing_template"}]}] run effect give @s jump_boost 1 2 true

# 幸運のアミュレット
execute as @a[nbt={Inventory:[{id:"minecraft:wild_armor_trim_smithing_template"}]}] run function werewolf:items/amulets/random_effects
scoreboard players set @a[nbt=!{Inventory:[{id:"minecraft:wild_armor_trim_smithing_template"}]}] lucky_amulet 0
execute store result score #乱数 lucky_amulet run random value 1..6

# 捕食のアミュレット
execute as @a[nbt={Inventory:[{id:"minecraft:silence_armor_trim_smithing_template"}]},scores={predation_amulet=1}] run attribute @s generic.max_health base set 22
execute as @a[nbt={Inventory:[{id:"minecraft:silence_armor_trim_smithing_template"}]},scores={predation_amulet=2}] run attribute @s generic.max_health base set 24
execute as @a[nbt={Inventory:[{id:"minecraft:silence_armor_trim_smithing_template"}]},scores={predation_amulet=3}] run attribute @s generic.max_health base set 26
execute as @a[nbt={Inventory:[{id:"minecraft:silence_armor_trim_smithing_template"}]},scores={predation_amulet=4}] run attribute @s generic.max_health base set 28
execute as @a[nbt={Inventory:[{id:"minecraft:silence_armor_trim_smithing_template"}]},scores={predation_amulet=5..}] run attribute @s generic.max_health base set 30
execute as @a[nbt=!{Inventory:[{id:"minecraft:silence_armor_trim_smithing_template"}]}] run attribute @s generic.max_health base set 20
scoreboard players set @a[nbt=!{Inventory:[{id:"minecraft:silence_armor_trim_smithing_template"}]}] predation_amulet 0