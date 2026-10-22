$item modify entity @s armor.chest {function:"minecraft:set_item",item:"$(nivel)_chestplate"}
$item modify entity @s armor.legs {function:"minecraft:set_item",item:"$(nivel)_leggings"}
$item modify entity @s armor.feet {function:"minecraft:set_item",item:"$(nivel)_boots"}

$item modify entity @s[tag=AI_guarda] weapon.mainhand {function:"minecraft:set_item",item:"$(nivel)_sword"}

playsound entity.player.levelup neutral @a[distance=..10] ~ ~ ~ 1 1 1
execute if score @s j.nivel_armadura matches 1.. run function j_villagers_update:ferreiro/encantar

$scoreboard players set @s j_dano $(dano)
execute store result entity @s data."j:raycast".dano int 1 run scoreboard players get @s j_dano

tag @s remove j_guard.enchanted
tag @s remove j.pode_melhorar_armadura
scoreboard players add @s j.nivel_armadura 1