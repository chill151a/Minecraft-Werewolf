# リザルトを表示
tellraw @a {"text":"\n【 全員の役職 】"}
execute if entity @a[scores={role_number=1}] run tellraw @a [{"text":"◆ "},{"text":"人狼","color":"red"},{"text":"："},{"selector":"@a[scores={role_number=1}]"}]
execute if entity @a[scores={role_number=2}] run tellraw @a [{"text":"◆ "},{"text":"忍者","color":"red"},{"text":"："},{"selector":"@a[scores={role_number=2}]"}]
execute if entity @a[scores={role_number=10}] run tellraw @a [{"text":"◆ "},{"text":"狂人","color":"red"},{"text":"："},{"selector":"@a[scores={role_number=10}]"}]
execute if entity @a[scores={role_number=11}] run tellraw @a [{"text":"◆ "},{"text":"狂信者","color":"red"},{"text":"："},{"selector":"@a[scores={role_number=11}]"}]
execute if entity @a[scores={role_number=15}] run tellraw @a [{"text":"◆ "},{"text":"村人","color":"green"},{"text":"："},{"selector":"@a[scores={role_number=15}]"}]
execute if entity @a[scores={role_number=16}] run tellraw @a [{"text":"◆ "},{"text":"占い師","color":"green"},{"text":"："},{"selector":"@a[scores={role_number=16}]"}]
execute if entity @a[scores={role_number=17}] run tellraw @a [{"text":"◆ "},{"text":"霊媒師","color":"green"},{"text":"："},{"selector":"@a[scores={role_number=17}]"}]
execute if entity @a[scores={role_number=26}] run tellraw @a [{"text":"◆ "},{"text":"恋人","color":"yellow"},{"text":"："},{"selector":"@a[scores={role_number=26}]"}]
execute if entity @a[scores={role_number=25}] run tellraw @a [{"text":"◆ "},{"text":"キューピット：","color":"yellow"},{"selector":"@a[scores={role_number=25}]"}]
execute if entity @a[tag=thief] run tellraw @a [{"text":"◆ "},{"text":"怪盗","color":"yellow"},{"text":"："},{"selector":"@a[tag=thief]"}]

# スコアをセット
scoreboard players set #game_enabled settings 0

# リセット
function werewolf:game_reset