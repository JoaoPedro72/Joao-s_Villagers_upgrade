execute unless block ~ ~ ~ dirt_path run return fail

execute unless block ~01 ~ ~00 dirt_path positioned ~-1 ~ ~00 run return run function j_villagers_update:fazer/marcar/estrada
execute unless block ~-1 ~ ~00 dirt_path positioned ~01 ~ ~00 run return run function j_villagers_update:fazer/marcar/estrada
execute unless block ~00 ~ ~01 dirt_path positioned ~00 ~ ~-1 run return run function j_villagers_update:fazer/marcar/estrada
execute unless block ~00 ~ ~-1 dirt_path positioned ~00 ~ ~01 run return run function j_villagers_update:fazer/marcar/estrada

