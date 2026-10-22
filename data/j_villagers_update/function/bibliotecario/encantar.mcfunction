item modify entity @s armor.head j_villagers_update:encantar_raro
item modify entity @s armor.chest j_villagers_update:encantar_raro
item modify entity @s armor.legs j_villagers_update:encantar_raro
item modify entity @s armor.feet j_villagers_update:encantar_raro

item modify entity @s weapon.mainhand j_villagers_update:encantar_raro
item modify entity @s weapon.offhand j_villagers_update:encantar_raro

particle minecraft:enchant ~ ~ ~ 0.5 1 0.5 0 15
playsound minecraft:block.enchantment_table.use neutral @a[distance=..10] ~ ~ ~ 10 1
playsound minecraft:entity.villager.celebrate neutral @a[distance=..10] ~ ~ ~ 10 1

tag @s add j_guard.enchanted