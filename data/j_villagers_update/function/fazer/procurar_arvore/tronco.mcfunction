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

execute unless block ~ ~-1 ~ #j_data:can_become_farmland run return 0

summon marker ~ ~ ~ {Tags:["joao_raiz_da_arvore","j.parte_de_arvore"]}
#summon area_effect_cloud ~ ~ ~ {Tags:["joao_raiz_da_arvore","j.parte_de_arvore"],custom_particle:{type:happy_villager},Radius:0,Duration:2000}
function j_villagers_update:fazer/procurar_arvore/marcar_troncos

scoreboard players set @s j.cooldown 2
scoreboard players set @s joao_achou_arvore 1
return 1