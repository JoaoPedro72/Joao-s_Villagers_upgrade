execute if score @s joao_areaZ >= @s joao_area run return 0
scoreboard players add @s joao_areaZ 1

scoreboard players set @s joao_areaX 0
execute if function j_villagers_update:fazer/procurar_arvore/area_for_x run return 1

execute positioned ~ ~ ~2 positioned over world_surface run function j_villagers_update:fazer/procurar_arvore/area_for_z