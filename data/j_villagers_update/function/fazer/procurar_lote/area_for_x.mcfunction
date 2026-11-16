execute if block ~ ~-.5 ~ #j_data:can_build_on run particle minecraft:happy_villager ~ ~ ~ 0 0 0 0 0 force
#execute if block ~ ~-.5 ~ #j_data:can_build_on run function j_villagers_update:fazer/procurar_lote/folha
execute if block ~ ~-.5 ~ #j_data:can_build_on run return 1
execute unless block ~ ~-.5 ~ #j_data:can_build_on run particle minecraft:angry_villager ~ ~ ~ 0 0 0 0 0 force

execute if score @s joao_areaX >= @s joao_area run return 0
scoreboard players add @s joao_areaX 1

execute positioned ~3 ~ ~ positioned over world_surface run function j_villagers_update:fazer/procurar_lote/area_for_x