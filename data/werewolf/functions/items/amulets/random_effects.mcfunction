# エフェクトを付与
execute if entity @s[scores={lucky_amulet=300}] if score #乱数 lucky_amulet matches 1 run effect give @s speed 15 0 true
execute if entity @s[scores={lucky_amulet=300}] if score #乱数 lucky_amulet matches 2 run effect give @s jump_boost 15 0 true
execute if entity @s[scores={lucky_amulet=300}] if score #乱数 lucky_amulet matches 3 run effect give @s strength 15 0 true
execute if entity @s[scores={lucky_amulet=300}] if score #乱数 lucky_amulet matches 4 run effect give @s resistance 15 0 true
execute if entity @s[scores={lucky_amulet=300}] if score #乱数 lucky_amulet matches 5 run effect give @s slow_falling 15 0 true
execute if entity @s[scores={lucky_amulet=300}] if score #乱数 lucky_amulet matches 6 run effect give @s luck 15 0 true

# スコアを設定
scoreboard players add @s lucky_amulet 1
scoreboard players set @s[scores={lucky_amulet=301..}] lucky_amulet 0