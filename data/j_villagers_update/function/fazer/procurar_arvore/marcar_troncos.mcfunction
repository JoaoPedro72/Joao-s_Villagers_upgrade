execute if entity @n[type=marker,distance=..0.25,tag=joao_tronco_da_arvore] run return 1
#summon area_effect_cloud ~ ~ ~ {Tags:["joao_tronco_da_arvore","j.parte_de_arvore"],custom_particle:{type:happy_villager},Radius:0,Duration:2000}
summon marker ~ ~ ~ {Tags:["joao_tronco_da_arvore","j.parte_de_arvore"]}

execute positioned ~00 ~1 ~00 if block ~ ~ ~ #logs run function j_villagers_update:fazer/procurar_arvore/marcar_troncos
execute positioned ~00 ~1 ~-1 if block ~ ~ ~ #logs run function j_villagers_update:fazer/procurar_arvore/marcar_troncos
execute positioned ~00 ~1 ~01 if block ~ ~ ~ #logs run function j_villagers_update:fazer/procurar_arvore/marcar_troncos

execute positioned ~01 ~1 ~00 if block ~ ~ ~ #logs run function j_villagers_update:fazer/procurar_arvore/marcar_troncos
execute positioned ~01 ~1 ~-1 if block ~ ~ ~ #logs run function j_villagers_update:fazer/procurar_arvore/marcar_troncos
execute positioned ~01 ~1 ~01 if block ~ ~ ~ #logs run function j_villagers_update:fazer/procurar_arvore/marcar_troncos

execute positioned ~-1 ~1 ~00 if block ~ ~ ~ #logs run function j_villagers_update:fazer/procurar_arvore/marcar_troncos
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ #logs run function j_villagers_update:fazer/procurar_arvore/marcar_troncos
execute positioned ~-1 ~1 ~01 if block ~ ~ ~ #logs run function j_villagers_update:fazer/procurar_arvore/marcar_troncos


execute positioned ~00 ~0 ~-1 if block ~ ~ ~ #logs run function j_villagers_update:fazer/procurar_arvore/marcar_troncos
execute positioned ~00 ~0 ~01 if block ~ ~ ~ #logs run function j_villagers_update:fazer/procurar_arvore/marcar_troncos

execute positioned ~01 ~0 ~00 if block ~ ~ ~ #logs run function j_villagers_update:fazer/procurar_arvore/marcar_troncos
execute positioned ~01 ~0 ~-1 if block ~ ~ ~ #logs run function j_villagers_update:fazer/procurar_arvore/marcar_troncos
execute positioned ~01 ~0 ~01 if block ~ ~ ~ #logs run function j_villagers_update:fazer/procurar_arvore/marcar_troncos

execute positioned ~-1 ~0 ~00 if block ~ ~ ~ #logs run function j_villagers_update:fazer/procurar_arvore/marcar_troncos
execute positioned ~-1 ~0 ~-1 if block ~ ~ ~ #logs run function j_villagers_update:fazer/procurar_arvore/marcar_troncos
execute positioned ~-1 ~0 ~01 if block ~ ~ ~ #logs run function j_villagers_update:fazer/procurar_arvore/marcar_troncos