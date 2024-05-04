# 役職人数をカウント
execute store result score #人狼の生存数 settings if entity @a[scores={role_number=1..9},team=survivor]
execute store result score #村人の生存数 settings if entity @a[scores={role_number=15..24},team=survivor]
execute store result score #恋人の生存数 settings if entity @a[scores={role_number=26},team=survivor]
execute store result score #爆弾魔の生存数 settings if entity @a[scores={role_number=28},team=survivor]

# 勝利判定
execute if score #人狼の生存数 settings matches 1.. if score #村人の生存数 settings matches 0 if score #恋人の生存数 settings matches 0 run function werewolf:system/finish/werewolf_win
execute if score #人狼の生存数 settings matches 0 if score #村人の生存数 settings matches 1.. if score #恋人の生存数 settings matches 0 run function werewolf:system/finish/villager_win
execute if score #人狼の生存数 settings matches 1.. if score #村人の生存数 settings matches 0 if score #恋人の生存数 settings matches 1.. run function werewolf:system/finish/lovers_win
execute if score #人狼の生存数 settings matches 0 if score #村人の生存数 settings matches 1.. if score #恋人の生存数 settings matches 1.. run function werewolf:system/finish/lovers_win
execute if score #人狼の生存数 settings matches 0 if score #村人の生存数 settings matches 0 if score #恋人の生存数 settings matches 1.. run function werewolf:system/finish/lovers_win
execute if score #人狼の生存数 settings matches 0 if score #村人の生存数 settings matches 0 if score #恋人の生存数 settings matches 0 run function werewolf:system/finish/draw