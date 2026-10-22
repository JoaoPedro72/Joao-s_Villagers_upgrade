execute as @e[tag=AI_guarda, tag=!j_guard.enchanted,distance=..15] run function j_villagers_update:bibliotecario/encantar
execute as @e[tag=AI_arqueiro, tag=!j_guard.enchanted,distance=..15] run function j_villagers_update:bibliotecario/encantar

execute as @s[scores={j.cooldown=1..}] run return -1

execute as @e[tag=AI_guarda,distance=..15] run function j_villagers_update:bibliotecario/encantar

scoreboard players set @s j.cooldown 600