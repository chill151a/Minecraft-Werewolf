## 参加設定の処理

#スコアを設定
scoreboard players add @s participation_settings 1
scoreboard players set @s[scores={participation_settings=2..}] participation_settings 0

#通知を送信
tellraw @s[scores={participation_settings=0}] {"text":"[!] 「参加しない」に設定しました","color":"red"}
tellraw @s[scores={participation_settings=1}] {"text":"[!] 「参加する」に設定しました","color":"green"}

#効果音を再生
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1