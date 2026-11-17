
scoreboard objectives add joao_area dummy
scoreboard objectives add joao_areaX dummy
scoreboard objectives add joao_areaZ dummy
scoreboard objectives add joao_achou_arvore dummy

scoreboard players set @s joao_area 20
scoreboard players set @s joao_areaX 0
scoreboard players set @s joao_areaZ 0
scoreboard players set @s joao_achou_arvore 0

scoreboard players set @s j.cooldown 30

kill @e[tag=j.parte_de_arvore,distance=..50]

execute as @s align xyz positioned ~-30.5 ~ ~-30.5 positioned over world_surface run function j_villagers_update:fazer/procurar_arvore/area_for_z
