# AECを召喚
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["magic_snowball"],Duration:150}

# 効果音を再生
playsound minecraft:block.glass.break master @a ~ ~ ~ 4 1.2
playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 4 1.2

# 念の為自身をキル
kill @s