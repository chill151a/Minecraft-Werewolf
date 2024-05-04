# タイトルを表示
title @a title {"text":"恋人の勝利","color":"yellow"}
title @a subtitle [{"text":"マイクラ"},{"text":"人狼","color":"red"},{"text":" 終了"}]

# 効果音を再生
execute as @a at @s run playsound entity.illusioner.prepare_blindness master @s ~ ~ ~ 2 1

# リザルトを表示
tellraw @a {"text":"\n【 勝者 】"}
tellraw @a [{"text":"◆ "},{"text":"恋人","color":"yellow"},{"text":"陣営"}]
function werewolf:system/finish/result