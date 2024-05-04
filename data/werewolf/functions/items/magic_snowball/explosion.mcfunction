# 効果音を再生
playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 4 1

# パーティクルを表示
particle minecraft:explosion_emitter ~ ~3 ~ 0 0 0 0 1 force @a
particle minecraft:lava ~ ~3 ~ 3 3 3 0 20 force @a

# ダメージを与える
execute as @a[distance=..5] run damage @s 7