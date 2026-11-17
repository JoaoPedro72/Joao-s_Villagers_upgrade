execute if score @s joao_areaZ >= @s joao_area run return 1
scoreboard players add @s joao_areaZ 1

scoreboard players set @s joao_areaX 0
execute if function j_villagers_update:fazer/marcar/scanear/area_for_x run return 0

execute positioned ^ ^ ^1 run return run function j_villagers_update:fazer/marcar/scanear/area_for_z