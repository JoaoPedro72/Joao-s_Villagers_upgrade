execute if block ~ ~-1 ~ #logs positioned ~ ~-1 ~ run function j_villagers_update:fazer/procurar_arvore/tronco
execute if block ~ ~-1 ~-1 #logs positioned ~ ~-1 ~-1 run function j_villagers_update:fazer/procurar_arvore/tronco
execute if block ~ ~-1 ~1 #logs positioned ~ ~-1 ~1 run function j_villagers_update:fazer/procurar_arvore/tronco

execute if block ~1 ~-1 ~ #logs positioned ~1 ~-1 ~ run function j_villagers_update:fazer/procurar_arvore/tronco
execute if block ~1 ~-1 ~-1 #logs positioned ~1 ~-1 ~-1 run function j_villagers_update:fazer/procurar_arvore/tronco
execute if block ~1 ~-1 ~1 #logs positioned ~1 ~-1 ~1 run function j_villagers_update:fazer/procurar_arvore/tronco

execute if block ~-1 ~-1 ~ #logs positioned ~-1 ~-1 ~ run function j_villagers_update:fazer/procurar_arvore/tronco
execute if block ~-1 ~-1 ~-1 #logs positioned ~-1 ~-1 ~-1 run function j_villagers_update:fazer/procurar_arvore/tronco
execute if block ~-1 ~-1 ~1 #logs positioned ~-1 ~-1 ~1 run function j_villagers_update:fazer/procurar_arvore/tronco


execute if score @s joao_achou_arvore matches 1 run return 1

execute if block ~ ~-1 ~ #air run return 0

summon marker ~ ~.5 ~ {Tags:["joao_raiz_da_arvore"]}
function j_villagers_update:fazer/procurar_arvore/marcar_troncos

scoreboard players set @s joao_achou_arvore 1
return 1