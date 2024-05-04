# 効果音を再生
playsound ui.button.click master @s ~ ~ ~ 1 1

# 価格設定を表示
tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n【 "},{"text":"ショップ","color":"yellow","bold":true},{"text":"設定 】\n"}]

execute unless score #鉄の剣 settings matches 1.. run tellraw @s [{"text":"◆ 鉄の剣の価格: > ["},{"text":"3エメ","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/shop/iron_sword"}},{"text":"] <"}]
execute if score #鉄の剣 settings matches 1 run tellraw @s [{"text":"◆ 鉄の剣の価格: > ["},{"text":"4エメ","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/shop/iron_sword"}},{"text":"] <"}]
execute if score #鉄の剣 settings matches 2 run tellraw @s [{"text":"◆ 鉄の剣の価格: > ["},{"text":"5エメ","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/shop/iron_sword"}},{"text":"] <"}]
execute if score #鉄の剣 settings matches 3 run tellraw @s [{"text":"◆ 鉄の剣の価格: > ["},{"text":"6エメ","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/shop/iron_sword"}},{"text":"] <"}]
execute unless score #矢 settings matches 1.. run tellraw @s [{"text":"◆ 矢の個数: > ["},{"text":"3個","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/shop/arrow"}},{"text":"] <"}]
execute if score #矢 settings matches 1 run tellraw @s [{"text":"◆ 矢の個数: > ["},{"text":"5個","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/shop/arrow"}},{"text":"] <"}]
execute if score #矢 settings matches 2 run tellraw @s [{"text":"◆ 矢の個数: > ["},{"text":"10個","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/shop/arrow"}},{"text":"] <"}]
execute if score #矢 settings matches 3 run tellraw @s [{"text":"◆ 矢の個数: > ["},{"text":"15個","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/shop/arrow"}},{"text":"] <"}]
execute unless score #再生のポーション settings matches 1.. run tellraw @s [{"text":"◆ 再生のポーションの価格: > ["},{"text":"2エメ","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/shop/regeneration_potion"}},{"text":"] <"}]
execute if score #再生のポーション settings matches 1 run tellraw @s [{"text":"◆ 再生のポーションの価格: > ["},{"text":"3エメ","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/shop/regeneration_potion"}},{"text":"] <"}]
execute if score #再生のポーション settings matches 2 run tellraw @s [{"text":"◆ 再生のポーションの価格: > ["},{"text":"4エメ","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/shop/regeneration_potion"}},{"text":"] <"}]
execute unless score #透明化のポーション settings matches 1.. run tellraw @s [{"text":"◆ 透明化ポーションの価格: > ["},{"text":"3エメ","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/shop/invisible_potion"}},{"text":"] <"}]
execute if score #透明化のポーション settings matches 1 run tellraw @s [{"text":"◆ 透明化ポーションの価格: > ["},{"text":"4エメ","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/shop/invisible_potion"}},{"text":"] <"}]
execute if score #透明化のポーション settings matches 2 run tellraw @s [{"text":"◆ 透明化ポーションの価格: > ["},{"text":"5エメ","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/shop/invisible_potion"}},{"text":"] <"}]
execute if score #透明化のポーション settings matches 3 run tellraw @s [{"text":"◆ 透明化ポーションの価格: > ["},{"text":"6エメ","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/shop/invisible_potion"}},{"text":"] <"}]
execute unless score #ランダムアイテム settings matches 1.. run tellraw @s [{"text":"◆ ランダムアイテムの価格: > ["},{"text":"3エメ","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/shop/random_items"}},{"text":"] <"}]
execute if score #ランダムアイテム settings matches 1 run tellraw @s [{"text":"◆ ランダムアイテムの価格: > ["},{"text":"4エメ","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/shop/random_items"}},{"text":"] <"}]
execute if score #ランダムアイテム settings matches 2 run tellraw @s [{"text":"◆ ランダムアイテムの価格: > ["},{"text":"5エメ","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/shop/random_items"}},{"text":"] <"}]
execute if score #ランダムアイテム settings matches 3 run tellraw @s [{"text":"◆ ランダムアイテムの価格: > ["},{"text":"6エメ","color":"green","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/set_scores/shop/random_items"}},{"text":"] <"}]

tellraw @s [{"text":"← 前のページ: > ["},{"text":"開く","color":"aqua","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/menu"}},{"text":"] <"}]