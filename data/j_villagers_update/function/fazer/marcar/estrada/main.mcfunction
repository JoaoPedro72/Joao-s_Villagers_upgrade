scoreboard objectives add j.caminho dummy
scoreboard players set @s j.caminho 10

particle flame ~ ~1 ~ 0.0 0.0 0.0 0 0 force

execute if block ~ ~01 ~ dirt_path positioned ~ ~01 ~ run return run function j_villagers_update:fazer/marcar/estrada/main
execute if block ~ ~-1 ~ dirt_path positioned ~ ~-1 ~ run return run function j_villagers_update:fazer/marcar/estrada/main

execute unless block ~ ~ ~ dirt_path run return fail

execute unless block ~01 ~ ~00 dirt_path unless block ~01 ~-1 ~00 dirt_path unless block ~01 ~1 ~00 dirt_path positioned ~-1 ~ ~00 run return run function j_villagers_update:fazer/marcar/estrada/main
execute unless block ~-1 ~ ~00 dirt_path unless block ~-1 ~-1 ~00 dirt_path unless block ~-1 ~1 ~00 dirt_path positioned ~01 ~ ~00 run return run function j_villagers_update:fazer/marcar/estrada/main
execute unless block ~00 ~ ~01 dirt_path unless block ~00 ~-1 ~01 dirt_path unless block ~00 ~1 ~01 dirt_path positioned ~00 ~ ~-1 run return run function j_villagers_update:fazer/marcar/estrada/main
execute unless block ~00 ~ ~-1 dirt_path unless block ~00 ~-1 ~-1 dirt_path unless block ~00 ~1 ~-1 dirt_path positioned ~00 ~ ~01 run return run function j_villagers_update:fazer/marcar/estrada/main

particle heart ~ ~1 ~ 0.0 0.0 0.0 0 0 force

execute positioned ~03 ~ ~ positioned over world_surface if block ~ ~-1 ~ dirt_path positioned ~-5 ~ ~00 positioned over world_surface positioned ~ ~-1 ~ run function j_villagers_update:fazer/marcar/estrada/m_x
execute positioned ~-3 ~ ~ positioned over world_surface if block ~ ~-1 ~ dirt_path positioned ~05 ~ ~00 positioned over world_surface positioned ~ ~-1 ~ run function j_villagers_update:fazer/marcar/estrada/p_x
execute positioned ~ ~ ~03 positioned over world_surface if block ~ ~-1 ~ dirt_path positioned ~00 ~ ~-5 positioned over world_surface positioned ~ ~-1 ~ run function j_villagers_update:fazer/marcar/estrada/m_z
execute positioned ~ ~ ~-3 positioned over world_surface if block ~ ~-1 ~ dirt_path positioned ~00 ~ ~05 positioned over world_surface positioned ~ ~-1 ~ run function j_villagers_update:fazer/marcar/estrada/p_z
