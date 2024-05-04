## 時間停止の終了時の演出

#効果音を再生
execute as @a at @s run playsound block.bell.use master @s ~ ~ ~ 2 0

#パーティクルを表示
execute as @a at @s run particle minecraft:end_rod ~ ~1.5 ~ 0 0 0 1 300 normal @s