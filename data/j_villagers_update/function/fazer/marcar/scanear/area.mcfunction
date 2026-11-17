
scoreboard objectives add joao_area dummy
scoreboard objectives add joao_areaX dummy
scoreboard objectives add joao_areaY dummy
scoreboard objectives add joao_areaZ dummy

$scoreboard players set @s joao_area $(in)
scoreboard players set @s joao_areaX 0
scoreboard players set @s joao_areaY 0
scoreboard players set @s joao_areaZ 0

$execute as @s align xyz positioned ^$(out) ^.5 ^.5 run return run function j_villagers_update:fazer/marcar/scanear/area_for_y
