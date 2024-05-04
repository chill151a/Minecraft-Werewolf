## ロード時の処理

#通知を送信
tellraw @a "マイクラ人狼 ver.1.1.0 Beta をロードしました"

#効果音を再生
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1

#スコアボードの作成
scoreboard objectives add settings dummy "役職一覧"
scoreboard objectives add participation_settings dummy "参加設定"
scoreboard objectives add death_count deathCount "死亡回数"
scoreboard objectives add role_number dummy "役職の番号"
scoreboard objectives add role_book dummy "役職本"
scoreboard objectives add vote trigger "投票"
scoreboard objectives add execution dummy "処刑"
scoreboard objectives add abilities dummy "能力"
scoreboard objectives add clicked_carrot_stick used:carrot_on_a_stick "杖"
scoreboard objectives add ninja_kill_count playerKillCount "忍者のキル数"
scoreboard objectives add random_items dummy "ランダムアイテム"
scoreboard objectives add silence_clock dropped:clock "静寂の時計"
scoreboard objectives add silence_clock_duration dummy "静寂の時計の持続時間"
scoreboard objectives add smoke_launcher used:crossbow "スモークランチャー"
scoreboard objectives add magic_snowball used:snowball "魔法の雪玉"
scoreboard objectives add predation_amulet playerKillCount "捕食のアミュレット"
scoreboard objectives add snipe_mode dummy "狙撃モード"
scoreboard objectives add right_click_cooldown dummy "右クリックのクールダウン"

#チームの作成
team add survivor "生存者"
team add spectator "観戦者"
team add red "赤"
team add green "緑"
team add yellow "黄色"

#チームを設定
team modify survivor nametagVisibility never
team modify survivor seeFriendlyInvisibles false
team modify red color red
team modify green color green
team modify yellow color yellow

#スコアを色付け
team join red 人狼
team join red 忍者
team join red 狂人
team join red 狂信者
team join green 村人
team join green 占い師
team join green 霊媒師
team join green 双子
team join yellow キューピット
team join yellow 怪盗
team join yellow 爆弾魔

#ゲームルールを変更
gamerule sendCommandFeedback false
gamerule keepInventory true
gamerule naturalRegeneration false