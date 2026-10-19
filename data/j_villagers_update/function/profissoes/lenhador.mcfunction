execute as @s[scores={j.cooldown=1..}] run return -1

execute as @e[tag=joao_raiz_da_arvore] at @s unless entity @n[tag=j.lenhador,distance=..30] run kill @s 
execute as @e[tag=joao_tronco_da_arvore] at @s unless entity @n[tag=j.lenhador,distance=..30] run kill @s 


execute unless entity @n[tag=joao_raiz_da_arvore,distance=..30] run function j_villagers_update:fazer/procurar_arvore/area
execute unless entity @n[tag=joao_raiz_da_arvore,distance=..30] run return run scoreboard players set @s j.cooldown 30

function j_villagers_update:fazer/cortar_arvore/main
