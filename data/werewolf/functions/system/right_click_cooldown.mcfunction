## 右クリックのクールダウン

#スコアを減算
scoreboard players remove @s[scores={right_click_cooldown=1..}] right_click_cooldown 1

#進捗を剥奪
advancement revoke @s[scores={right_click_cooldown=1}] only werewolf:items/sniper
advancement revoke @s only werewolf:items/
advancement revoke @s only werewolf:items/
advancement revoke @s only werewolf:items/