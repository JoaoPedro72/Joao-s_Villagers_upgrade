item replace entity @s armor.chest with leather_chestplate
item replace entity @s armor.legs with leather_leggings
item replace entity @s armor.feet with leather_boots

item modify entity @s[tag=AI_guarda] weapon.mainhand {function:"minecraft:set_item",item:"stone_sword"}

scoreboard players set @s j_dano 5
execute store result entity @s data."j:raycast".dano int 1 run scoreboard players get @s j_dano

tag @s remove j_guard.enchanted
playsound entity.player.levelup neutral @a[distance=..10] ~ ~ ~ 1 1 1

tag @s remove j.pode_melhorar_armadura
scoreboard players set @s j.nivel_armadura 0