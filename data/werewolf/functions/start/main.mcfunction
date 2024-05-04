## ボスバーの処理

#ボスバーを作成
bossbar add day_time "昼"
bossbar add night_time "夜"

#ボスバーの見た目を設定
bossbar set day_time color yellow
bossbar set day_time style notched_6

bossbar set night_time color purple
bossbar set night_time style notched_6

#ボスバーの最大値を設定
execute unless score #day_time settings matches 1.. run bossbar set day_time max 120
execute if score #day_time settings matches 1 run bossbar set day_time max 180
execute if score #day_time settings matches 2 run bossbar set day_time max 240

execute unless score #night_time settings matches 1.. run bossbar set night_time max 120
execute if score #night_time settings matches 1 run bossbar set night_time max 180
execute if score #night_time settings matches 2 run bossbar set night_time max 240

#ボスバーを全員から見れるよう設定
bossbar set day_time players @a
bossbar set night_time players @a


## 役職の処理

#チームに追加
team join survivor @a[gamemode=!spectator]
team join spectator @a[gamemode=spectator]

#スコアを設定
scoreboard players reset @a role_number
scoreboard players set @a[team=survivor] role_number 0

#タグを削除
tag @a remove thief
tag @a remove lovers

#役職を割り当て
execute if score 人狼 settings matches 1 run scoreboard players set @r[scores={role_number=0},limit=1] role_number 1
execute if score 人狼 settings matches 2 run scoreboard players set @r[scores={role_number=0},limit=2] role_number 1
execute if score 人狼 settings matches 3 run scoreboard players set @r[scores={role_number=0},limit=3] role_number 1
execute if score 忍者 settings matches 1 run scoreboard players set @r[scores={role_number=0},limit=1] role_number 2
execute if score 狂人 settings matches 1 run scoreboard players set @r[scores={role_number=0},limit=1] role_number 10
execute if score 狂信者 settings matches 1 run scoreboard players set @r[scores={role_number=0},limit=1] role_number 11
execute if score 占い師 settings matches 1 run scoreboard players set @r[scores={role_number=0},limit=1] role_number 16
execute if score 霊媒師 settings matches 1 run scoreboard players set @r[scores={role_number=0},limit=1] role_number 17
execute if score キューピット settings matches 1 run scoreboard players set @r[scores={role_number=0},limit=1] role_number 25
execute if score 怪盗 settings matches 1 run scoreboard players set @r[scores={role_number=0},limit=1] role_number 27
tag @a[scores={role_number=27}] add thief

scoreboard players set @a[scores={role_number=0}] role_number 15

#スコアをセット
scoreboard players set @a[scores={role_number=16}] abilities 1
scoreboard players set @a[scores={role_number=17}] abilities 1
scoreboard players set @a[scores={role_number=25}] abilities 2
scoreboard players set @a[scores={role_number=27}] abilities 1
execute as @a run scoreboard players operation @s role_book = @s role_number

#役職通知を送信
tellraw @a [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n【  "},{"text":"マイクラ人狼","color":"red","bold":true},{"text":" 開始 】"}]
tellraw @a [{"text":"◆ "},{"text":"能力や勝利条件は\n  インベントリから確認可能"}]


## アイテムの処理

#初期アイテムを配布
give @a stone_sword[unbreakable={}]
give @a bow[unbreakable={}]
give @a arrow 3
item replace entity @a hotbar.8 with carrot_on_a_stick[item_name='{"text":"杖"}',lore=['{"color":"white","italic":false,"text":"【使用】"}','[{"color":"white","italic":false,"text":"◆ "},{"keybind":"key.use"}]','{"color":"white","italic":false,"text":"【効果】"}','[{"color":"white","italic":false,"text":"◆ "},{"text":"役職によって効果が異なる。"}]'],unbreakable={}] 1

#役職本を配置
item replace entity @a inventory.4 with writable_book[custom_data={role_book:1}]


## 配役の処理

#配役を表示
tellraw @a {"text":"\n【 配役 】"}
execute if score 人狼 settings matches 1.. run tellraw @a [{"text":"◆ "},{"text":"人狼","color":"red"},{"text":"："},{"score":{"objective":"settings","name":"人狼"}},{"text":"人"}]
execute if score 忍者 settings matches 1.. run tellraw @a [{"text":"◆ "},{"text":"忍者","color":"red"},{"text":"："},{"score":{"objective":"settings","name":"忍者"}},{"text":"人"}]
execute if score 狂人 settings matches 1.. run tellraw @a [{"text":"◆ "},{"text":"狂人","color":"red"},{"text":"："},{"score":{"objective":"settings","name":"狂人"}},{"text":"人"}]
execute if score 狂信者 settings matches 1.. run tellraw @a [{"text":"◆ "},{"text":"狂信者","color":"red"},{"text":"："},{"score":{"objective":"settings","name":"狂信者"}},{"text":"人"}]
execute if score 占い師 settings matches 1.. run tellraw @a [{"text":"◆ "},{"text":"占い師","color":"green"},{"text":"："},{"score":{"objective":"settings","name":"占い師"}},{"text":"人"}]
execute if score 霊媒師 settings matches 1.. run tellraw @a [{"text":"◆ "},{"text":"霊媒師","color":"green"},{"text":"："},{"score":{"objective":"settings","name":"霊媒師"}},{"text":"人"}]
execute if score キューピット settings matches 1.. run tellraw @a [{"text":"◆ "},{"text":"キューピット","color":"yellow"},{"text":"："},{"score":{"objective":"settings","name":"キューピット"}},{"text":"人"}]
execute if score 怪盗 settings matches 1.. run tellraw @a [{"text":"◆ "},{"text":"怪盗","color":"yellow"},{"text":"："},{"score":{"objective":"settings","name":"怪盗"}},{"text":"人"}]


## ショップの処理

#村人を召喚
execute at @e[type=armor_stand,tag=shop] unless entity @e[type=villager,tag=shop,distance=..1] run summon villager ~ ~ ~ {Tags:["shop"],Silent:true,Invulnerable:true,NoAI:true,VillagerData:{level:99,profession:"minecraft:toolsmith",type:"minecraft:plains"},CustomNameVisible:true,CustomName:'{"text":"ショップ"}'}
execute as @e[type=villager,tag=shop] at @s run data modify entity @s Rotation set from entity @e[type=armor_stand,tag=shop,sort=nearest,limit=1,distance=..1] Rotation
effect give @e[type=villager,tag=shop] resistance infinite 4 true

#交易アイテムをリセット
execute as @e[type=villager,tag=shop] run data remove entity @s Offers.Recipes[]

#価格を設定
execute unless score #鉄の剣 settings matches 1.. as @e[type=villager,tag=shop] run data modify entity @s Offers.Recipes[] set value {rewardExp:0b,maxUses:9999,buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:iron_sword",count:1,components:{"minecraft:unbreakable":{}}}}
execute if score #鉄の剣 settings matches 1 as @e[type=villager,tag=shop] run data modify entity @s Offers.Recipes[] set value {rewardExp:0b,maxUses:9999,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:iron_sword",count:1,components:{"minecraft:unbreakable":{}}}}
execute if score #鉄の剣 settings matches 2 as @e[type=villager,tag=shop] run data modify entity @s Offers.Recipes[] set value {rewardExp:0b,maxUses:9999,buy:{id:"minecraft:emerald",count:5},sell:{id:"minecraft:iron_sword",count:1,components:{"minecraft:unbreakable":{}}}}
execute if score #鉄の剣 settings matches 3 as @e[type=villager,tag=shop] run data modify entity @s Offers.Recipes[] set value {rewardExp:0b,maxUses:9999,buy:{id:"minecraft:emerald",count:6},sell:{id:"minecraft:iron_sword",count:1,components:{"minecraft:unbreakable":{}}}}

execute unless score #矢 settings matches 1.. as @e[type=villager,tag=shop] run data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:9999,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:arrow",count:3}}
execute if score #矢 settings matches 1 as @e[type=villager,tag=shop] run data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:9999,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:arrow",count:5}}
execute if score #矢 settings matches 2 as @e[type=villager,tag=shop] run data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:9999,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:arrow",count:10}}
execute if score #矢 settings matches 3 as @e[type=villager,tag=shop] run data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:9999,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:arrow",count:15}}

execute unless score #再生のポーション settings matches 1.. as @e[type=villager,tag=shop] run data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:9999,buy:{id:"minecraft:emerald",count:2},sell:{id:"minecraft:potion",count:1,components:{"minecraft:item_name":'{"text":"再生のポーション"}',"minecraft:potion_contents":{custom_color:14048421,custom_effects:[{id:"minecraft:regeneration",amplifier:2,duration:200}]}}}}
execute if score #再生のポーション settings matches 1 as @e[type=villager,tag=shop] run data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:9999,buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:potion",count:1,components:{"minecraft:item_name":'{"text":"再生のポーション"}',"minecraft:potion_contents":{custom_color:14048421,custom_effects:[{id:"minecraft:regeneration",amplifier:2,duration:200}]}}}}
execute if score #再生のポーション settings matches 2 as @e[type=villager,tag=shop] run data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:9999,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:potion",count:1,components:{"minecraft:item_name":'{"text":"再生のポーション"}',"minecraft:potion_contents":{custom_color:14048421,custom_effects:[{id:"minecraft:regeneration",amplifier:2,duration:200}]}}}}

execute unless score #透明化のポーション settings matches 1.. as @e[type=villager,tag=shop] run data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:9999,buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:potion",count:1,components:{"minecraft:item_name":'{"text":"透明化のポーション"}',"minecraft:potion_contents":{custom_color:16777215,custom_effects:[{id:"minecraft:invisibility",duration:300}]}}}}
execute if score #透明化のポーション settings matches 1 as @e[type=villager,tag=shop] run data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:9999,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:potion",count:1,components:{"minecraft:item_name":'{"text":"透明化のポーション"}',"minecraft:potion_contents":{custom_color:16777215,custom_effects:[{id:"minecraft:invisibility",duration:300}]}}}}
execute if score #透明化のポーション settings matches 2 as @e[type=villager,tag=shop] run data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:9999,buy:{id:"minecraft:emerald",count:5},sell:{id:"minecraft:potion",count:1,components:{"minecraft:item_name":'{"text":"透明化のポーション"}',"minecraft:potion_contents":{custom_color:16777215,custom_effects:[{id:"minecraft:invisibility",duration:300}]}}}}
execute if score #透明化のポーション settings matches 3 as @e[type=villager,tag=shop] run data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:9999,buy:{id:"minecraft:emerald",count:6},sell:{id:"minecraft:potion",count:1,components:{"minecraft:item_name":'{"text":"透明化のポーション"}',"minecraft:potion_contents":{custom_color:16777215,custom_effects:[{id:"minecraft:invisibility",duration:300}]}}}}

execute unless score #ランダムアイテム settings matches 1.. as @e[type=villager,tag=shop] run data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:9999,buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:chest",count:1,components:{"minecraft:item_name":'{"text":"ランダムアイテム"}',"minecraft:lore":['{"color":"white","italic":false,"text":"【効果】"}','[{"color":"aqua","italic":false,"text":"インベントリ"},{"color":"white","text":"に入れると、"}]','[{"color":"white","italic":false,"text":"ランダムな"},{"color":"yellow","text":"アイテム"},{"text":"に変化する。"}]'],"minecraft:custom_data":{random_items:1}}}}
execute if score #ランダムアイテム settings matches 1 as @e[type=villager,tag=shop] run data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:9999,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:chest",count:1,components:{"minecraft:item_name":'{"text":"ランダムアイテム"}',"minecraft:lore":['{"color":"white","italic":false,"text":"【効果】"}','[{"color":"aqua","italic":false,"text":"インベントリ"},{"color":"white","text":"に入れると、"}]','[{"color":"white","italic":false,"text":"ランダムな"},{"color":"yellow","text":"アイテム"},{"text":"に変化する。"}]'],"minecraft:custom_data":{random_items:1}}}}
execute if score #ランダムアイテム settings matches 2 as @e[type=villager,tag=shop] run data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:9999,buy:{id:"minecraft:emerald",count:5},sell:{id:"minecraft:chest",count:1,components:{"minecraft:item_name":'{"text":"ランダムアイテム"}',"minecraft:lore":['{"color":"white","italic":false,"text":"【効果】"}','[{"color":"aqua","italic":false,"text":"インベントリ"},{"color":"white","text":"に入れると、"}]','[{"color":"white","italic":false,"text":"ランダムな"},{"color":"yellow","text":"アイテム"},{"text":"に変化する。"}]'],"minecraft:custom_data":{random_items:1}}}}
execute if score #ランダムアイテム settings matches 3 as @e[type=villager,tag=shop] run data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:9999,buy:{id:"minecraft:emerald",count:6},sell:{id:"minecraft:chest",count:1,components:{"minecraft:item_name":'{"text":"ランダムアイテム"}',"minecraft:lore":['{"color":"white","italic":false,"text":"【効果】"}','[{"color":"aqua","italic":false,"text":"インベントリ"},{"color":"white","text":"に入れると、"}]','[{"color":"white","italic":false,"text":"ランダムな"},{"color":"yellow","text":"アイテム"},{"text":"に変化する。"}]'],"minecraft:custom_data":{random_items:1}}}}


## その他の処理

#エフェクトを付与
effect give @a saturation infinite 0 true
effect give @a regeneration infinite 0 true

#属性を設定
execute as @a run attribute @s generic.armor base set 15
execute as @a run attribute @s generic.attack_speed base set 4.25

#関数を実行
function werewolf:system/day_cycle/day_time/set_time