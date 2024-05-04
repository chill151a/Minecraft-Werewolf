# 効果音を再生
playsound ui.button.click master @s ~ ~ ~ 1 1

# 役職設定を表示
tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n【 "},{"text":"役職","color":"blue","bold":true},{"text":"設定 】\n"}]

execute unless score 人狼 settings matches 1.. run tellraw @s [{"text":"◆ 人狼の数: > ["},{"text":"0人","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/roles/werewolf"}},{"text":"] <"}]
execute if score 人狼 settings matches 1 run tellraw @s [{"text":"◆ 人狼の数: > ["},{"text":"1人","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/roles/werewolf"}},{"text":"] <"}]
execute if score 人狼 settings matches 2 run tellraw @s [{"text":"◆ 人狼の数: > ["},{"text":"2人","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/roles/werewolf"}},{"text":"] <"}]
execute if score 人狼 settings matches 3 run tellraw @s [{"text":"◆ 人狼の数: > ["},{"text":"3人","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/roles/werewolf"}},{"text":"] <"}]
execute unless score 忍者 settings matches 1.. run tellraw @s [{"text":"◆ 忍者の数: > ["},{"text":"0人","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/roles/ninja"}},{"text":"] <"}]
execute if score 忍者 settings matches 1 run tellraw @s [{"text":"◆ 忍者の数: > ["},{"text":"1人","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/roles/ninja"}},{"text":"] <"}]
execute unless score 狂人 settings matches 1.. run tellraw @s [{"text":"◆ 狂人の数: > ["},{"text":"0人","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/roles/madman"}},{"text":"] <"}]
execute if score 狂人 settings matches 1 run tellraw @s [{"text":"◆ 狂人の数: > ["},{"text":"1人","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/roles/madman"}},{"text":"] <"}]
execute unless score 狂信者 settings matches 1.. run tellraw @s [{"text":"◆ 狂信者の数: > ["},{"text":"0人","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/roles/fanatic"}},{"text":"] <"}]
execute if score 狂信者 settings matches 1 run tellraw @s [{"text":"◆ 狂信者の数: > ["},{"text":"1人","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/roles/fanatic"}},{"text":"] <"}]
execute unless score 占い師 settings matches 1.. run tellraw @s [{"text":"◆ 占い師の数: > ["},{"text":"0人","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/roles/seer"}},{"text":"] <"}]
execute if score 占い師 settings matches 1 run tellraw @s [{"text":"◆ 占い師の数: > ["},{"text":"1人","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/roles/seer"}},{"text":"] <"}]
execute unless score 霊媒師 settings matches 1.. run tellraw @s [{"text":"◆ 霊媒師の数: > ["},{"text":"0人","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/roles/medium"}},{"text":"] <"}]
execute if score 霊媒師 settings matches 1 run tellraw @s [{"text":"◆ 霊媒師の数: > ["},{"text":"1人","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/roles/medium"}},{"text":"] <"}]
execute unless score 怪盗 settings matches 1.. run tellraw @s [{"text":"◆ 怪盗の数: > ["},{"text":"0人","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/roles/thief"}},{"text":"] <"}]
execute if score 怪盗 settings matches 1 run tellraw @s [{"text":"◆ 怪盗の数: > ["},{"text":"1人","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/roles/thief"}},{"text":"] <"}]
execute unless score キューピット settings matches 1.. run tellraw @s [{"text":"◆ キューピットの数: > ["},{"text":"0人","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/roles/cupid"}},{"text":"] <"}]
execute if score キューピット settings matches 1 run tellraw @s [{"text":"◆ キューピットの数: > ["},{"text":"1人","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/roles/cupid"}},{"text":"] <"}]

tellraw @s [{"text":"← 前のページ: > ["},{"text":"開く","color":"aqua","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/menu"}},{"text":"] <"}]