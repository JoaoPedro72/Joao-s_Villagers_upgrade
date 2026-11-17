execute if score @s joao_areaY >= @s joao_area run return 1
scoreboard players add @s joao_areaY 1

scoreboard players set @s joao_areaZ 0
execute unless function j_villagers_update:fazer/marcar/scanear/area_for_z run return 0

execute positioned ^ ^1 ^ run return run function j_villagers_update:fazer/marcar/scanear/area_for_y