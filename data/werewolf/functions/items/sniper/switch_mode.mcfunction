## 狙撃モードを切り替え

#スコアを設定
scoreboard players set @s right_click_cooldown 5
scoreboard players add @s snipe_mode 1
scoreboard players set @s[scores={snipe_mode=2..}] snipe_mode 0

#通知を送信
tellraw @s[scores={snipe_mode=0}] [{"text":"[!] 狙撃モードをオフに変更しました","color":"red"}]
tellraw @s[scores={snipe_mode=1}] [{"text":"[!] 狙撃モードをオンに変更しました","color":"green"}]

#効果音を再生
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1