## ランダムアイテムの処理

#効果音を再生
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1

#チェストをクリア
clear @s chest[minecraft:custom_data={random_items:1}] 1

#スコアをセット
execute store result score @s random_items run random value 1..14

#アイテムを配布
give @s[scores={random_items=1}] elytra[minecraft:unbreakable={}]
give @s[scores={random_items=2}] shield[minecraft:unbreakable={}]
give @s[scores={random_items=3}] ender_pearl 3
give @s[scores={random_items=4}] glowstone_dust[item_name='{"text":"発光の粉"}',lore=['{"color":"white","italic":false,"text":"【使用】"}','[{"color":"white","italic":false,"text":"◆ "},{"keybind":"key.drop"},{"text":"+"},{"keybind":"key.sneak"}]','{"color":"white","italic":false,"text":"【効果】"}','[{"color":"white","italic":false,"text":"◆ "},{"text":"設定秒数、使用者以外を発光させる。"}]']]
give @s[scores={random_items=5}] gunpowder[item_name='{"text":"盲目の粉"}',lore=['{"color":"white","italic":false,"text":"【使用】"}','[{"color":"white","italic":false,"text":"◆ "},{"keybind":"key.drop"},{"text":"+"},{"keybind":"key.sneak"}]','{"color":"white","italic":false,"text":"【効果】"}','[{"color":"white","italic":false,"text":"◆ "},{"text":"設定秒数、使用者以外の視界を奪う。"}]']]
give @s[scores={random_items=6}] clock[item_name='{"text":"静寂の時計"}',lore=['{"color":"white","italic":false,"text":"【使用】"}','[{"color":"white","italic":false,"text":"◆ "},{"keybind":"key.drop"},{"text":"+"},{"keybind":"key.sneak"}]','{"color":"white","italic":false,"text":"【効果】"}','[{"color":"white","italic":false,"text":"◆ "},{"text":"五秒間、使用者以外の移動を封じる。"}]']]
give @s[scores={random_items=7}] snowball[item_name='{"text":"魔法の雪玉"}',lore=['{"color":"white","italic":false,"text":"【使用】"}','[{"color":"white","italic":false,"text":"◆ "},{"keybind":"key.use"}]','{"color":"white","italic":false,"text":"【効果】"}','{"color":"white","italic":false,"text":"◆ 投げた位置に陣を展開し、"}','[{"color":"white","italic":false,"text":"   三秒経過後に"},{"color":"red","text":"大爆発"},{"text":"を引き起こす。"}]']]
give @s[scores={random_items=8}] fermented_spider_eye[max_stack_size=1,item_name='{"text":"狙撃手の瞳"}',lore=['[{"color":"gray","italic":false,"text":"◆ "},{"keybind":"key.use"},{"text":"で狙撃モードを切替"}]','{"color":"gray","italic":false,"text":"◆ 狙撃モードがオンの状態で"}','[{"color":"gray","italic":false,"text":"  "},{"color":"#B36C1B","text":"弓"},{"text":"を撃つと、矢が"},{"color":"red","text":"弾丸"},{"text":"に変わる"}]'],custom_data={sniper:1},food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:1000}]
give @s[scores={random_items=9}] crossbow[item_name='{"color":"white","text":"スモークランチャー"}',lore=['{"color":"white","italic":false,"text":"【使用】"}','[{"color":"white","italic":false,"text":"◆ "},{"keybind":"key.use"}]','{"color":"white","italic":false,"text":"【効果】"}','{"color":"white","italic":false,"text":"◆ 矢が着弾した位置に"}','[{"color":"gray","italic":false,"text":"   スモーク"},{"color":"white","text":"を展開する。"}]'],custom_data={smoke_launcher:1},minecraft:enchantments={levels:{"minecraft:multishot":1},show_in_tooltip:false},minecraft:unbreakable={}]
give @s[scores={random_items=10}] tide_armor_trim_smithing_template[item_name='{"text":"俊敏のアミュレット"}',lore=['{"text":"【効果】","color":"white","italic":false}','[{"text":"◆ ","color":"white","italic":false},{"text":"インベントリ"},{"text":"に入れておくと、"}]','[{"text":"   移動速度","color":"aqua","italic":false},{"text":"が上昇する。","color":"white"}]'],hide_additional_tooltip={}]
give @s[scores={random_items=11}] eye_armor_trim_smithing_template[item_name='{"text":"跳躍のアミュレット"}',lore=['{"text":"【効果】","color":"white","italic":false}','[{"text":"◆ ","color":"white","italic":false},{"text":"インベントリ"},{"text":"に入れておくと、"}]','[{"text":"   ジャンプ力","color":"yellow","italic":false},{"text":"が上昇する。","color":"white"}]'],hide_additional_tooltip={}]
give @s[scores={random_items=12}] vex_armor_trim_smithing_template[item_name='{"text":"防御のアミュレット"}',lore=['{"text":"【効果】","color":"white","italic":false}','[{"text":"◆ ","color":"white","italic":false},{"text":"インベントリ"},{"text":"に入れておくと、"}]','[{"text":"   防御力","color":"blue","italic":false},{"text":"が上昇する。","color":"white"}]'],hide_additional_tooltip={}]
give @s[scores={random_items=13}] wild_armor_trim_smithing_template[item_name='{"text":"幸運のアミュレット"}',lore=['{"text":"【効果】","color":"white","italic":false}','[{"text":"◆ ","color":"white","italic":false},{"text":"インベントリ"},{"text":"に入れておくと、"}]','[{"text":"   15秒毎に","color":"white","italic":false},{"text":"ランダムな"},{"text":"ステータス","color":"green"},{"text":"が上昇する。","color":"white"}]'],hide_additional_tooltip={}]
give @s[scores={random_items=14}] silence_armor_trim_smithing_template[item_name='{"text":"捕食のアミュレット"}',lore=['{"text":"【効果】","color":"white","italic":false}','[{"text":"◆ ","color":"white","italic":false},{"text":"インベントリ"},{"text":"に入れておくと、"}]','[{"text":"   キル","color":"red","italic":false},{"text":"する毎に","color":"white"},{"text":"最大体力","color":"light_purple"},{"text":"が2増える。","color":"white"}]'],hide_additional_tooltip={}]