# タイトルを表示
title @a title {"text":"村人の勝利","color":"green"}
title @a subtitle [{"text":"マイクラ"},{"text":"人狼","color":"red"},{"text":" 終了"}]

# 効果音を再生
execute as @a at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 0.5 1

# リザルトを表示
tellraw @a {"text":"\n【 勝者 】"}
tellraw @a [{"text":"◆ "},{"text":"村人","color":"green"},{"text":"陣営"}]
function werewolf:system/finish/result