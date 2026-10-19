execute if entity @n[type=marker,distance=..0.25,tag=joao_tronco_da_arvore] run return 1
summon marker ~ ~.5 ~ {Tags:["joao_tronco_da_arvore"]}

execute if block ~ ~1 ~ #logs positioned ~ ~1 ~ run function j_villagers_update:fazer/procurar_arvore/marcar_troncos
execute if block ~ ~1 ~-1 #logs positioned ~ ~1 ~-1 run function j_villagers_update:fazer/procurar_arvore/marcar_troncos
execute if block ~ ~1 ~1 #logs positioned ~ ~1 ~1 run function j_villagers_update:fazer/procurar_arvore/marcar_troncos

execute if block ~1 ~1 ~ #logs positioned ~1 ~1 ~ run function j_villagers_update:fazer/procurar_arvore/marcar_troncos
execute if block ~1 ~1 ~-1 #logs positioned ~1 ~1 ~-1 run function j_villagers_update:fazer/procurar_arvore/marcar_troncos
execute if block ~1 ~1 ~1 #logs positioned ~1 ~1 ~1 run function j_villagers_update:fazer/procurar_arvore/marcar_troncos

execute if block ~-1 ~1 ~ #logs positioned ~-1 ~1 ~ run function j_villagers_update:fazer/procurar_arvore/marcar_troncos
execute if block ~-1 ~1 ~-1 #logs positioned ~-1 ~1 ~-1 run function j_villagers_update:fazer/procurar_arvore/marcar_troncos
execute if block ~-1 ~1 ~1 #logs positioned ~-1 ~1 ~1 run function j_villagers_update:fazer/procurar_arvore/marcar_troncos

execute if block ~ ~ ~-1 #logs positioned ~ ~ ~-1 run function j_villagers_update:fazer/procurar_arvore/marcar_troncos
execute if block ~ ~ ~1 #logs positioned ~ ~ ~1 run function j_villagers_update:fazer/procurar_arvore/marcar_troncos

execute if block ~1 ~ ~ #logs positioned ~1 ~ ~ run function j_villagers_update:fazer/procurar_arvore/marcar_troncos
execute if block ~1 ~ ~-1 #logs positioned ~1 ~ ~-1 run function j_villagers_update:fazer/procurar_arvore/marcar_troncos
execute if block ~1 ~ ~1 #logs positioned ~1 ~ ~1 run function j_villagers_update:fazer/procurar_arvore/marcar_troncos

execute if block ~-1 ~ ~ #logs positioned ~-1 ~ ~ run function j_villagers_update:fazer/procurar_arvore/marcar_troncos
execute if block ~-1 ~ ~-1 #logs positioned ~-1 ~ ~-1 run function j_villagers_update:fazer/procurar_arvore/marcar_troncos
execute if block ~-1 ~ ~1 #logs positioned ~-1 ~ ~1 run function j_villagers_update:fazer/procurar_arvore/marcar_troncos