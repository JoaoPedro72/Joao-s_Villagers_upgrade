execute as @s[scores={j.cooldown=1..}] run return -1

execute unless entity @n[tag=joao_raiz_da_arvore,distance=..30] if score 20 j.ticks matches 1 run function j_villagers_update:fazer/procurar_arvore/area
execute unless entity @n[tag=joao_raiz_da_arvore,distance=..30] run return run scoreboard players set @s j.cooldown 30

execute as @s[scores={j.cooldown=1..}] run return -1

function j_villagers_update:fazer/cortar_arvore/main
