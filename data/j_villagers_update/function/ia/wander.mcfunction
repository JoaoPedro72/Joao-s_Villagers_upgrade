execute if entity @n[distance=..15,type=villager] run return run function j_ai:wander


execute if score 100 j.ticks matches 16 run function j_villagers_update:ia/procurar_villagers with storage j:raycast
execute run function j_villagers_update:ia/patrulhar with storage j:raycast
execute unless entity @n[distance=..25,type=villager] run tag @s add perdido
execute if entity @n[distance=..25,type=villager] run tag @s remove perdido