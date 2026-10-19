scoreboard objectives add joao_area dummy
scoreboard objectives add joao_areaX dummy
scoreboard objectives add joao_areaZ dummy
scoreboard objectives add joao_achou_arvore dummy

scoreboard players set @s joao_area 20
scoreboard players set @s joao_areaX 0
scoreboard players set @s joao_areaZ 0
scoreboard players set @s joao_achou_arvore 0

execute as @s align xyz positioned ~-8.5 ~ ~-8.5 positioned over world_surface run function j_villagers_update:fazer/procurar_arvore/area_for_z
