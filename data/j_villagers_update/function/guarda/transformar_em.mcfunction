summon mannequin ~ ~ ~ {CustomName:[{text:Guarda}],CustomNameVisible:0b,hide_description:1b,Health:40,equipment:{mainhand:{count:1,id:wooden_sword}},attributes:[{id:max_health,base:40f}],Tags:["AI_guarda","special","AI","new"],profile:{texture:"j_items:mannequin/villager_guarda",model:wide}}
execute as @n[tag=new] run function j_villagers_update:dar_tags


scoreboard players set @n[tag=new] j.mob.speed 70
scoreboard players set @n[tag=new] j.cooldown 0
scoreboard players set @n[tag=new] j_dano 4

item replace entity @n[tag=new] armor.head with stick[minecraft:item_model="j_items:heads/villager_guard"]

execute as @n[tag=new] run function j_mobs:dar_id
tag @n[tag=new] remove new

tp @s[type=villager] ~ ~-1000 ~
kill @s[type=villager]
