#schedule function j_villagers_update:teste/oi 1s replace
say oi

summon villager ~ ~ ~ {Tags:["newborn","not_really_invisible","has_skin"]}
execute as @n[tag=newborn] run function j_mobs:dar_id
effect give @n[tag=newborn] invisibility infinite 0 true

summon mannequin ~ ~ ~ {CustomName:[{text:villager}],CustomNameVisible:0b,immovable:1b,Invulnerable:1b,hide_description:1b,Health:20,attributes:[{id:max_health,base:20f},{id:scale,base:0.99f}],Tags:["special","AI","new","skin"],profile:{texture:"j_items:mannequin/villager",model:wide}}
execute as @n[tag=new] run function j_villagers_update:dar_tags
scoreboard players set @n[tag=new] j.mob.speed 70
scoreboard players set @n[tag=new] j.cooldown 0

item replace entity @n[tag=new] armor.head with stick[minecraft:item_model="j_items:heads/villager"]
item replace entity @n[tag=new] armor.chest with stick[minecraft:equippable={slot:"chest",asset_id:"j_items:toolsmith",swappable:1,damage_on_hurt:1,equip_on_interact:1}]
item replace entity @n[tag=new] armor.legs with stick[minecraft:equippable={slot:"legs",asset_id:"j_items:toolsmith",swappable:1,damage_on_hurt:1,equip_on_interact:1}]
item replace entity @n[tag=new] armor.feet with stick[minecraft:equippable={slot:"feet",asset_id:"j_items:toolsmith",swappable:1,damage_on_hurt:1,equip_on_interact:1}]


execute as @n[tag=new] run function j_mobs:dar_id
execute as @n[tag=new] run scoreboard players operation @s ids = @n[tag=newborn] ids

tag @n[tag=new] remove new
tag @n[tag=newborn] remove newborn

give @s minecraft:stick[minecraft:equippable={slot:"head",swappable:1,damage_on_hurt:1,equip_on_interact:1},item_model="j_items:heads/villager"]
give @s minecraft:stick[minecraft:equippable={slot:"chest",asset_id:"j_items:toolsmith",swappable:1,damage_on_hurt:1,equip_on_interact:1}]
give @s minecraft:stick[minecraft:equippable={slot:"legs",asset_id:"j_items:toolsmith",swappable:1,damage_on_hurt:1,equip_on_interact:1}]
give @s minecraft:stick[minecraft:equippable={slot:"feet",asset_id:"j_items:toolsmith",swappable:1,damage_on_hurt:1,equip_on_interact:1}]