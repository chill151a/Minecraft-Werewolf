## インベントリを制限

#黒色の板ガラスをクリア
clear @a[nbt=!{Inventory:[{id:"minecraft:black_stained_glass_pane",Slot:13b}]}] black_stained_glass_pane

#インベントリを置き換える
item replace entity @a inventory.0 with black_stained_glass_pane[item_name='{"text":"使用不可"}']
item replace entity @a inventory.1 with black_stained_glass_pane[item_name='{"text":"使用不可"}']
item replace entity @a inventory.2 with black_stained_glass_pane[item_name='{"text":"使用不可"}']
item replace entity @a inventory.3 with black_stained_glass_pane[item_name='{"text":"使用不可"}']
item replace entity @a inventory.5 with black_stained_glass_pane[item_name='{"text":"使用不可"}']
item replace entity @a inventory.6 with black_stained_glass_pane[item_name='{"text":"使用不可"}']
item replace entity @a inventory.7 with black_stained_glass_pane[item_name='{"text":"使用不可"}']
item replace entity @a inventory.8 with black_stained_glass_pane[item_name='{"text":"使用不可"}']

#アイテムをキル
kill @e[type=item,nbt={Item:{id:"minecraft:black_stained_glass_pane"}}]


## 役職本の処理

#役職本をクリア
clear @a[nbt=!{Inventory:[{id:"minecraft:writable_book",Slot:13b}]}] writable_book[custom_data={role_book:1}]

#クリック音を再生
execute as @a[nbt=!{Inventory:[{id:"minecraft:writable_book",Slot:13b}]}] at @s run playsound ui.button.click master @s ~ ~ ~ 1 1

#役職説明を表示
execute as @a[nbt=!{Inventory:[{id:"minecraft:writable_book",Slot:13b}]}] at @s run tellraw @s[scores={role_book=1}] [{"text":"\n【役職】\n◆ あなたは"},{"text":"人狼","color":"red"},{"text":"です\n【仲間】\n◆ "},{"selector":"@a[scores={role_book=1..9},distance=0.1..]"},{"text":"\n【能力】\n◆ なし"},{"text":"\n【勝利条件】\n◆ "},{"text":"村人","color":"green"},{"text":"と"},{"text":"恋人","color":"yellow"},{"text":"の全滅"}]
execute as @a[nbt=!{Inventory:[{id:"minecraft:writable_book",Slot:13b}]}] at @s run tellraw @s[scores={role_book=2}] [{"text":"\n【役職】\n◆ あなたは"},{"text":"忍者","color":"red"},{"text":"です\n【仲間】\n◆ "},{"selector":"@a[scores={role_book=1..9},distance=0.1..]"},{"text":"\n【能力】\n◆ "},{"text":"キルをすると、"},{"text":"五秒間"},{"text":"\n   移動速度上昇","color":"aqua","italic":false},{"text":"と","color":"white"},{"text":"透明化","color":"gray"},{"text":"の効果を得る。","color":"white"},{"text":"\n【勝利条件】\n◆ "},{"text":"村人","color":"green"},{"text":"と"},{"text":"恋人","color":"yellow"},{"text":"の全滅"}]
execute as @a[nbt=!{Inventory:[{id:"minecraft:writable_book",Slot:13b}]}] at @s run tellraw @s[scores={role_book=10}] [{"text":"\n【役職】\n◆ あなたは"},{"text":"狂人","color":"red"},{"text":"です\n【能力】\n◆ なし"},{"text":"\n【勝利条件】\n◆ "},{"text":"村人","color":"green"},{"text":"と"},{"text":"恋人","color":"yellow"},{"text":"の全滅"}]
execute as @a[nbt=!{Inventory:[{id:"minecraft:writable_book",Slot:13b}]}] at @s run tellraw @s[scores={role_book=11}] [{"text":"\n【役職】\n◆ あなたは"},{"text":"狂信者","color":"red"},{"text":"です\n【仲間】\n◆ "},{"selector":"@a[scores={role_book=1..9},distance=0.1..]"},{"text":"\n【能力】\n◆ なし"},{"text":"\n【勝利条件】\n◆ "},{"text":"村人","color":"green"},{"text":"と"},{"text":"恋人","color":"yellow"},{"text":"の全滅"}]
execute as @a[nbt=!{Inventory:[{id:"minecraft:writable_book",Slot:13b}]}] at @s run tellraw @s[scores={role_book=15}] [{"text":"\n【役職】\n◆ あなたは"},{"text":"村人","color":"green"},{"text":"です\n【能力】\n◆ なし"},{"text":"\n【勝利条件】\n◆ "},{"text":"人狼","color":"red"},{"text":"と"},{"text":"恋人","color":"yellow"},{"text":"の全滅"}]
execute as @a[nbt=!{Inventory:[{id:"minecraft:writable_book",Slot:13b}]}] at @s run tellraw @s[scores={role_book=16}] [{"text":"\n【役職】\n◆ あなたは"},{"text":"占い師","color":"green"},{"text":"です\n【能力】\n◆ プレイヤーの近くで"},{"text":"杖","color":"aqua"},{"text":"を使用すると、\n   "},{"text":"人狼","color":"red"},{"text":"か"},{"text":"人狼でない","color":"green"},{"text":"かを占うことができる。"},{"text":"\n【勝利条件】\n◆ "},{"text":"人狼","color":"red"},{"text":"と"},{"text":"恋人","color":"yellow"},{"text":"の全滅"}]
execute as @a[nbt=!{Inventory:[{id:"minecraft:writable_book",Slot:13b}]}] at @s run tellraw @s[scores={role_book=17}] [{"text":"\n【役職】\n◆ あなたは"},{"text":"霊媒師","color":"green"},{"text":"です\n【能力】\n◆ 死体の近くで"},{"text":"杖","color":"aqua"},{"text":"を使用すると、その死体が"},{"text":"\n  人狼","color":"red"},{"text":"か"},{"text":"人狼でない","color":"green"},{"text":"かを占うことができる。"},{"text":"\n【勝利条件】\n◆ "},{"text":"人狼","color":"red"},{"text":"と"},{"text":"恋人","color":"yellow"},{"text":"の全滅"}]
execute as @a[nbt=!{Inventory:[{id:"minecraft:writable_book",Slot:13b}]}] at @s run tellraw @s[scores={role_book=25}] [{"text":"\n【役職】\n◆ あなたは"},{"text":"キューピット","color":"yellow"},{"text":"です\n【能力】\n◆ 死体の近くで"},{"text":"\n【勝利条件】\n◆ "},{"text":"村人","color":"green"},{"text":"または"},{"text":"人狼","color":"red"},{"text":"の全滅時に生存"}]
execute as @a[nbt=!{Inventory:[{id:"minecraft:writable_book",Slot:13b}]}] at @s run tellraw @s[scores={role_book=26}] [{"text":"\n【役職】\n◆ あなたは"},{"text":"恋人","color":"yellow"},{"text":"です\n【能力】\n◆ なし"},{"text":"\n【相方】\n◆ "},{"selector":"@a[scores={role_book=26},distance=0.1..]"},{"text":"\n【勝利条件】\n◆ "},{"text":"村人","color":"green"},{"text":"または"},{"text":"人狼","color":"red"},{"text":"の全滅時に生存"}]
execute as @a[nbt=!{Inventory:[{id:"minecraft:writable_book",Slot:13b}]}] at @s run tellraw @s[scores={role_book=27}] [{"text":"\n【役職】\n◆ あなたは"},{"text":"怪盗","color":"yellow"},{"text":"です\n【能力】\n◆ プレイヤーの近くで"},{"text":"杖","color":"aqua"},{"text":"を使用すると、\n   役職を"},{"text":"強奪","color":"red"},{"text":"することができる。"},{"text":"\n【勝利条件】\n◆ 盗んだ役職の勝利条件に従う"}]

#役職本を配置
item replace entity @a inventory.4 with writable_book[item_name='{"text":"役職本"}',lore=['{"color":"white","italic":false,"text":"【使用】"}','[{"color":"white","italic":false,"text":"◆ "},{"keybind":"key.attack"}]','{"color":"white","italic":false,"text":"【効果】"}','[{"color":"white","italic":false,"text":"◆ "},{"text":"役職説明を表示する。"}]'],custom_data={role_book:1}]

#アイテムをキル
kill @e[type=item,nbt={Item:{id:"minecraft:writable_book"}}]