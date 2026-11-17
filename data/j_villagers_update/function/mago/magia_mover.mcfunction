
execute if entity @e[tag=agressive,distance=..2] run function j_villagers_update:mago/explosao

execute unless block ~ ~ ~ #j_data:atravessavel run function j_villagers_update:mago/explosao

execute if entity @s[scores={distance=..0}] run kill @s
scoreboard players remove @s distance 1
tp @s ^ ^ ^.75
particle flame ~ ~ ~ 0.0 0.0 0.0 0 1 force
