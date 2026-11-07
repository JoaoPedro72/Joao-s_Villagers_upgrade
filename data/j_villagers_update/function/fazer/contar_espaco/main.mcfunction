execute unless entity @s[scores={j.blocks=..0}] align xyz positioned ~.5 ~1.5 ~.5 run return run function j_villagers_update:fazer/contar_espaco/positioned with entity @s data."j:raycast"
execute if score aux j.blocks matches 40.. run return 1

execute as @e[tag=id,tag=plus_x] at @s run function j_villagers_update:fazer/contar_espaco/plus_x with entity @s data."j:raycast"
execute as @e[tag=id,tag=plus_z] at @s run function j_villagers_update:fazer/contar_espaco/plus_z with entity @s data."j:raycast"
execute as @e[tag=id,tag=minus_x] at @s run function j_villagers_update:fazer/contar_espaco/minus_x with entity @s data."j:raycast"
execute as @e[tag=id,tag=minus_z] at @s run function j_villagers_update:fazer/contar_espaco/minus_z with entity @s data."j:raycast"
