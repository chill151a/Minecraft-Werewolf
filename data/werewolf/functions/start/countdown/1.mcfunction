# 効果音を再生
execute as @a at @s run playsound block.note_block.bell master @s ~ ~ ~ 2 1

# タイトルを表示
title @a times 10 70 20
title @a title "1"

# スケジュールを設定
schedule function werewolf:start 1s append