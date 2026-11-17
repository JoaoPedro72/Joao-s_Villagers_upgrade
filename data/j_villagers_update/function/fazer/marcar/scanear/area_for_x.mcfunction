execute if block ~ ~-.5 ~ #j_data:can_build_on run particle minecraft:happy_villager ~ ~ ~ 0 0 0 0 0 force
execute unless block ~ ~-.5 ~ #j_data:can_build_on run particle minecraft:angry_villager ~ ~ ~ 0 0 0 0 0 force

execute unless block ~ ~-.5 ~ #j_data:can_build_on run return 1
execute if entity @n[distance=..1,tag=j.construcao] run return 1

scoreboard players add @s joao_areaX 1
execute if score @s joao_areaX >= @s joao_area run return 0

execute positioned ^1 ^ ^ run return run function j_villagers_update:fazer/marcar/scanear/area_for_x