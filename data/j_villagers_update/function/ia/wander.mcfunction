execute if entity @n[distance=..15,type=villager,tag=!AI_guarda,tag=!AI_arqueiro] run function j_ai:wander

execute if entity @e[distance=..15,type=villager,tag=!AI_guarda] run return fail

execute if score 20 j.ticks matches 12 run function j_villagers_update:ia/procurar_villagers with storage j:raycast
execute run function j_villagers_update:ia/patrulhar with storage j:raycast
execute unless entity @e[distance=..25,type=villager,tag=!AI_guarda] run tag @s add perdido
