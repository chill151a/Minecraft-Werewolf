# タイトルを表示
title @a title {"text":"人狼の勝利","color":"red"}
title @a subtitle [{"text":"マイクラ"},{"text":"人狼","color":"red"},{"text":" 終了"}]

# 効果音を再生
execute as @a at @s run playsound entity.ender_dragon.growl master @s ~ ~ ~ 0.5 1

# リザルトを表示
tellraw @a {"text":"\n【 勝者 】"}
tellraw @a [{"text":"◆ "},{"text":"人狼","color":"red"},{"text":"陣営"}]
function werewolf:system/finish/result