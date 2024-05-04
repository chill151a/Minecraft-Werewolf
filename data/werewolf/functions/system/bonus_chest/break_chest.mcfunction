# 効果音を再生
execute at @e[type=item_display,tag=bonus_chest] run playsound block.wood.break master @a ~ ~ ~ 2 1.2

# パーティクルを表示
execute at @e[type=item_display,tag=bonus_chest] run particle cloud ~ ~0.6 ~ 0 0 0 0.01 3

# ボーナスチェストをキル
kill @e[type=item_display,tag=bonus_chest]
kill @e[type=interaction,tag=bonus_chest]