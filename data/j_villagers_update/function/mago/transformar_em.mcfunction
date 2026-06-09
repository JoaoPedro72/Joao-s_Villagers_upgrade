summon mannequin ~ ~ ~ {CustomName:[{text:Mago}],CustomNameVisible:0b,hide_description:1b,Health:40,equipment:{mainhand:{count:1,id:blaze_rod}},attributes:[{id:max_health,base:40f}],Tags:["AI_mago","special","AI","new"],profile:{texture:"j_items:mannequin/villager_mago",model:wide}}
execute as @n[tag=new] run function j_villagers_update:dar_tags

execute as @n[tag=new] store result entity @s attributes[{id:"minecraft:scale"}].base float 0.01 run random value 95..100
scoreboard players set @n[tag=new] mob_speed 70
scoreboard players set @n[tag=new] attack_cooldown 0

item replace entity @n[tag=new] armor.head with stick[minecraft:item_model="j_items:heads/villager_mage"]
item replace entity @n[tag=new] weapon.mainhand with blaze_rod[minecraft:item_model="j_items:custom_weapon/lightning_rod"]

execute as @n[tag=new] run function j_mobs:dar_id
tag @n[tag=new] remove new

tp @s[type=villager] ~ ~-1000 ~
kill @s[type=villager]
