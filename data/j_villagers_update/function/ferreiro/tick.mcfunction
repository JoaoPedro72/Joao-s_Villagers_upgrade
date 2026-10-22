execute as @s[tag=!j.data_saved] run function j_ai:carregar_raycast
execute as @s[scores={j.cooldown=1..}] run return -1

execute if entity @n[tag=hurt,type=iron_golem,distance=..15] run return run function j_villagers_update:ferreiro/curar_iron_golens

execute if entity @n[tag=j.pode_melhorar_armadura,distance=..15] run return run function j_villagers_update:ferreiro/melhorar_armadura



