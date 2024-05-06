## 弾丸を動かす

#スコアを加算
scoreboard players add @s sniper_bullet 1

#10m以上移動時にダメージを与える
execute if entity @s[scores={sniper_bullet=20..}] positioned ~ ~-0.5 ~ as @e[distance=..0.5] run damage @s 5 arrow
execute if entity @s[scores={sniper_bullet=20..}] positioned ~ ~-1.5 ~ as @e[distance=..0.5] run damage @s 5 arrow

#弾道を表示
execute unless entity @s[scores={sniper_bullet=20..}] run particle dust{color:[1.0,1.0,1.0],scale:2} ~ ~ ~ 0 0 0 0 1 force @a
execute if entity @s[scores={sniper_bullet=20..}] run particle dust{color:[0.6,0.0,0.0],scale:2} ~ ~ ~ 0 0 0 0 1 force @a

#弾を0.5m先に移動
tp @s ^ ^ ^0.5

#特定のブロックがあれば関数を再実行
execute if block ^ ^ ^0.5 #werewolf:can_through as @s at @s run function werewolf:items/sniper/move_bullet