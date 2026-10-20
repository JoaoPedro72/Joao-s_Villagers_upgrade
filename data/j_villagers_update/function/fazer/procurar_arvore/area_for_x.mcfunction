execute if block ~ ~-.5 ~ #leaves run particle minecraft:happy_villager ~ ~ ~ 0 0 0 0 0 force
execute if block ~ ~-.5 ~ #leaves run function j_villagers_update:fazer/procurar_arvore/folha
execute if block ~ ~-.5 ~ #leaves run return 1
execute unless block ~ ~-.5 ~ #leaves run particle minecraft:angry_villager ~ ~ ~ 0 0 0 0 0 force

execute if score @s joao_areaX >= @s joao_area run return 0
scoreboard players add @s joao_areaX 1

execute positioned ~2 ~ ~ positioned over world_surface run function j_villagers_update:fazer/procurar_arvore/area_for_x