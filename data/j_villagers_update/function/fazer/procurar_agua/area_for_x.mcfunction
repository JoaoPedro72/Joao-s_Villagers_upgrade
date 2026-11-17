execute if block ~ ~-.5 ~ water run particle minecraft:happy_villager ~ ~ ~ 0 0 0 0 0 force
execute if block ~ ~-.5 ~ water run return run function j_villagers_update:fazer/procurar_agua/marcar
execute unless block ~ ~-.5 ~ water run particle minecraft:angry_villager ~ ~ ~ 0 0 0 0 0 force

execute if score @s joao_areaX >= @s joao_area run return fail
scoreboard players add @s joao_areaX 1


execute if score @s j.achou_agua matches 1 run return 1
execute positioned ~4 ~ ~ positioned over world_surface run function j_villagers_update:fazer/procurar_agua/area_for_x