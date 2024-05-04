## 弾丸の処理

#弾の衝突時の演出
execute positioned ~ ~-0.5 ~ if entity @e[distance=..0.5] run function werewolf:items/sniper/hit
execute positioned ~ ~-1.5 ~ if entity @e[distance=..0.5] run function werewolf:items/sniper/hit

#弾の衝突時のダメージ
execute positioned ~ ~-0.5 ~ as @e[distance=..0.5] run damage @s 5 arrow
execute positioned ~ ~-1.5 ~ as @e[distance=..0.5] run damage @s 5 arrow

#弾道を表示
particle dust{color:[0.58,0.0,0.0],scale:2} ~ ~ ~ 0 0 0 0 1 force @a

#30m以内に人がいなければ関数の実行を終了
execute unless entity @p[distance=..50] run return fail

#特定のブロックがあれば関数を再実行
execute positioned ^ ^ ^0.5 if block ~ ~ ~ #werewolf:can_through run function werewolf:items/sniper/bullet