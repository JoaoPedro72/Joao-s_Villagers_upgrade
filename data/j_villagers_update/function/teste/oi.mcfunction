#schedule function j_villagers_update:teste/oi 1s replace
say oi

summon mannequin ~ ~ ~ {CustomName:[{text:villager}],CustomNameVisible:0b,hide_description:1b,Health:40,attributes:[{id:max_health,base:20f}],Tags:["special","AI","new"],profile:{texture:"j_items:mannequin/villager",model:wide}}
execute as @n[tag=new] run function j_villagers_update:dar_tags
scoreboard players set @n[tag=new] mob_speed 70
scoreboard players set @n[tag=new] attack_cooldown 0

item replace entity @n[tag=new] armor.head with stick[minecraft:item_model="j_items:heads/villager"]
item replace entity @n[tag=new] armor.chest with stick[minecraft:equippable={slot:"chest",asset_id:"j_items:toolsmith",swappable:1,damage_on_hurt:1,equip_on_interact:1}]
item replace entity @n[tag=new] armor.legs with stick[minecraft:equippable={slot:"legs",asset_id:"j_items:toolsmith",swappable:1,damage_on_hurt:1,equip_on_interact:1}]
item replace entity @n[tag=new] armor.feet with stick[minecraft:equippable={slot:"feet",asset_id:"j_items:toolsmith",swappable:1,damage_on_hurt:1,equip_on_interact:1}]


execute as @n[tag=new] run function j_mobs:dar_id
tag @n[tag=new] remove new

give @s minecraft:stick[minecraft:equippable={slot:"head",swappable:1,damage_on_hurt:1,equip_on_interact:1},item_model="j_items:heads/villager"]
give @s minecraft:stick[minecraft:equippable={slot:"chest",asset_id:"j_items:toolsmith",swappable:1,damage_on_hurt:1,equip_on_interact:1}]
give @s minecraft:stick[minecraft:equippable={slot:"legs",asset_id:"j_items:toolsmith",swappable:1,damage_on_hurt:1,equip_on_interact:1}]
give @s minecraft:stick[minecraft:equippable={slot:"feet",asset_id:"j_items:toolsmith",swappable:1,damage_on_hurt:1,equip_on_interact:1}]