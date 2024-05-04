# タイトルを表示
title @a title {"text":"引き分け","color":"aqua"}
title @a subtitle [{"text":"マイクラ"},{"text":"人狼","color":"red"},{"text":" 終了"}]

# 効果音を再生
execute as @a at @s run playsound entity.wither.spawn master @s ~ ~ ~ 2 2

# リザルトを表示
tellraw @a {"text":"\n【 勝者 】"}
tellraw @a [{"text":"◆ なし"}]
function werewolf:system/finish/result