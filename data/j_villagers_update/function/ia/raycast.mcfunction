#Retorna 4 caso atinja alvo
#Retorna 2 caso já exista um alvo
#Retorna 1 se bater em um bloco
#Retorna 0 se não bater em nada

$execute if entity @e[tag=$(id).target] run return 2

#Partículas para debug, podem ser removidas depois
#particle cloud ~ ~ ~ 0 0 0 0 1

execute positioned ~ ~ ~ if entity @n[distance=..1.25,type=!#j_data:not_mobs] as @n[distance=..1.25,predicate=j_villagers_update:inimigos/vilage,type=!#j_data:not_mobs] run return run function j_villagers_update:ia/marcar_entidade

execute positioned ~ ~-1 ~ if entity @n[distance=..1.25,type=!#j_data:not_mobs] as @n[distance=..1.25,predicate=j_villagers_update:inimigos/vilage,type=!#j_data:not_mobs] run return run function j_villagers_update:ia/marcar_entidade

execute positioned ~ ~-2 ~ if entity @n[distance=..1.25,type=!#j_data:not_mobs] as @n[distance=..1.25,predicate=j_villagers_update:inimigos/vilage,type=!#j_data:not_mobs] run return run function j_villagers_update:ia/marcar_entidade


execute unless block ~ ~ ~ #j_data:atravessar run return 1

$execute if entity @s[distance=..$(follow_distance)] positioned ^ ^ ^.8 run return run function j_villagers_update:ia/raycast with storage j:raycast
$execute unless entity @s[distance=..$(follow_distance)] positioned ^ ^ ^.8 run return 0