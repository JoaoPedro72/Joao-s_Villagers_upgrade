execute if score @s j.cooldown_virar matches 0 run rotate @s facing entity @n[tag=joao_raiz_da_arvore]

execute unless entity @n[tag=joao_raiz_da_arvore,distance=..2] if score 20 j.ticks matches 1 run function j_villagers_update:fazer/cortar_arvore/remover_folhas

execute unless entity @n[tag=joao_raiz_da_arvore,distance=..2] run return run function j_ai:move

execute unless score 20 j.ticks matches 1 run return fail

execute at @n[tag=joao_raiz_da_arvore] if block ~ ~ ~ #logs run function j_villagers_update:fazer/cortar_arvore/replantar

playsound block.wood.hit block @a[distance=..10] ~ ~ ~
execute at @e[sort=furthest,tag=joao_tronco_da_arvore,limit=1,distance=..30] run fill ~ ~ ~ ~ ~ ~ air replace #logs
execute as @e[sort=furthest,tag=joao_tronco_da_arvore,limit=1,distance=..30] run kill @s

execute if entity @n[tag=joao_tronco_da_arvore,distance=..20] run return fail

scoreboard players set @s j.cooldown 20
execute as @n[tag=joao_raiz_da_arvore] run kill @s
