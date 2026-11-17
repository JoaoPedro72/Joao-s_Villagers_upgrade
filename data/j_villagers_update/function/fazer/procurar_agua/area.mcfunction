
scoreboard objectives add joao_area dummy
scoreboard objectives add joao_areaX dummy
scoreboard objectives add joao_areaZ dummy
scoreboard objectives add j.achou_agua dummy

scoreboard players set @s joao_area 20
scoreboard players set @s joao_areaX 0
scoreboard players set @s joao_areaZ 0
scoreboard players set @s j.achou_agua 0

scoreboard players set @s j.cooldown 30

kill @e[tag=j.parte_de_arvore,distance=..50]

execute as @s align xyz positioned ~-40.5 ~ ~-40.5 positioned over world_surface run function j_villagers_update:fazer/procurar_agua/area_for_z
