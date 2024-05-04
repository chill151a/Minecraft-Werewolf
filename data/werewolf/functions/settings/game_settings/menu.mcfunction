# 効果音を再生
playsound ui.button.click master @s ~ ~ ~ 1 1

# メニューを表示
tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n【 "},{"text":"マイクラ人狼","color":"red","bold":true},{"text":" 設定メニュー 】\n"}]
tellraw @s [{"text":"⌛ 役職の設定: > ["},{"text":"開く","color":"aqua","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/role_settings"}},{"text":"] <"}]
tellraw @s [{"text":"⚔ アイテムの設定: > ["},{"text":"開く","color":"aqua","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/item_settings"}},{"text":"] <"}]
tellraw @s [{"text":"☆ ショップの設定: > ["},{"text":"開く","color":"aqua","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/shop_settings"}},{"text":"] <"}]
tellraw @s [{"text":"✉ その他の設定: > ["},{"text":"開く","color":"aqua","clickEvent":{"action":"run_command","value":"/function werewolf:settings/game_settings/other_settings"}},{"text":"] <"}]

# ゲームルール変更
gamerule sendCommandFeedback false