## スモークランチャーの処理

#付近の矢をタグ付け
execute at @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{smoke_launcher:1}}}},scores={smoke_launcher=1..}] run tag @e[type=arrow,distance=..3] add smoke_launcher

#スコアをセット
scoreboard players set @a smoke_launcher 0

#タグ付きの矢にAECを召喚
execute unless score #スモークランチャー settings matches 1.. at @e[type=arrow,tag=smoke_launcher,nbt={inGround:true}] run summon area_effect_cloud ~ ~ ~ {Tags:["smoke_launcher"],Duration:100}
execute if score #スモークランチャー settings matches 1 at @e[type=arrow,tag=smoke_launcher,nbt={inGround:true}] run summon area_effect_cloud ~ ~ ~ {Tags:["smoke_launcher"],Duration:200}
execute if score #スモークランチャー settings matches 2 at @e[type=arrow,tag=smoke_launcher,nbt={inGround:true}] run summon area_effect_cloud ~ ~ ~ {Tags:["smoke_launcher"],Duration:300}

#着弾したタグ付きの矢から効果音を再生
execute at @e[type=arrow,tag=smoke_launcher,nbt={inGround:true}] run playsound entity.generic.explode master @a ~ ~ ~ 3 1.2

#着弾したタグ付きの矢をキル
kill @e[type=arrow,tag=smoke_launcher,nbt={inGround:true}]

#スモークを出す
execute at @e[type=area_effect_cloud,tag=smoke_launcher] run particle campfire_signal_smoke ~ ~1.5 ~ 1.5 0.7 1.5 0 5 force @a

#スモーク内のプレイヤーを盲目に
execute at @e[type=area_effect_cloud,tag=smoke_launcher] run effect give @a[distance=..3.5] blindness 2 0 true