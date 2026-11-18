particle happy_villager ~ ~1 ~ 0.0 0.0 0.0 0 0 force

execute unless block ~ ~ ~1 #j_data:can_build_on unless block ~ ~ ~1 dirt_path run return fail
execute unless block ~ ~ ~ #j_data:can_build_on unless block ~ ~ ~ dirt_path run return fail
execute unless block ~ ~ ~-1 #j_data:can_build_on unless block ~ ~ ~-1 dirt_path run return fail

execute positioned ~00 ~ ~-1 positioned over world_surface if block ~ ~-1 ~ #j_data:can_build_on run summon marker ~ ~-1 ~ {Tags:["j.construcao","j.place.path"]}
execute positioned ~00 ~ ~00 positioned over world_surface if block ~ ~-1 ~ #j_data:can_build_on run summon marker ~ ~-1 ~ {Tags:["j.construcao","j.place.path"]}
execute positioned ~00 ~ ~01 positioned over world_surface if block ~ ~-1 ~ #j_data:can_build_on run summon marker ~ ~-1 ~ {Tags:["j.construcao","j.place.path"]}

execute positioned over world_surface if block ~ ~-1 ~ dirt_path positioned ~01 ~ ~ run return run function j_villagers_update:fazer/marcar/estrada/p_x

execute if score @s j.caminho matches 0 run return run scoreboard players set @s j.caminho 10
scoreboard players remove @s j.caminho 1

execute positioned ~01 ~ ~-1 positioned over world_surface if block ~ ~ ~ #j_data:can_build_on if block ~ ~-1 ~ #j_data:can_build_on run summon marker ~ ~-1 ~ {Tags:["j.construcao","j.place.path"]}
execute positioned ~01 ~ ~00 positioned over world_surface if block ~ ~ ~ #j_data:can_build_on if block ~ ~-1 ~ #j_data:can_build_on run summon marker ~ ~-1 ~ {Tags:["j.construcao","j.place.path"]}
execute positioned ~01 ~ ~01 positioned over world_surface if block ~ ~ ~ #j_data:can_build_on if block ~ ~-1 ~ #j_data:can_build_on run summon marker ~ ~-1 ~ {Tags:["j.construcao","j.place.path"]}

execute if score @s j.caminho matches 2 positioned ~01 ~ ~02 positioned over world_surface if block ~ ~-1 ~ #j_data:can_build_on run summon marker ~ ~-1 ~ {Tags:["j.lote"],Rotation:[0,0]}
execute if score @s j.caminho matches 2 positioned ~01 ~ ~-2 positioned over world_surface if block ~ ~-1 ~ #j_data:can_build_on run summon marker ~ ~-1 ~ {Tags:["j.lote"],Rotation:[180,0]}

execute if score @s j.caminho matches 5 positioned ~01 ~ ~02 positioned over world_surface if block ~ ~-1 ~ #j_data:can_build_on run summon marker ~ ~-1 ~ {Tags:["j.lote"],Rotation:[0,0]}
execute if score @s j.caminho matches 5 positioned ~01 ~ ~-2 positioned over world_surface if block ~ ~-1 ~ #j_data:can_build_on run summon marker ~ ~-1 ~ {Tags:["j.lote"],Rotation:[180,0]}

execute if score @s j.caminho matches 8 positioned ~01 ~ ~02 positioned over world_surface if block ~ ~-1 ~ #j_data:can_build_on run summon marker ~ ~-1 ~ {Tags:["j.lote"],Rotation:[0,0]}
execute if score @s j.caminho matches 8 positioned ~01 ~ ~-2 positioned over world_surface if block ~ ~-1 ~ #j_data:can_build_on run summon marker ~ ~-1 ~ {Tags:["j.lote"],Rotation:[180,0]}

execute positioned over world_surface positioned ~01 ~-1 ~ run return run function j_villagers_update:fazer/marcar/estrada/p_x