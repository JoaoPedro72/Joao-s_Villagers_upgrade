execute unless block ~ ~ ~ #j_data:atravessavel run return fail
execute unless block ~ ~-1 ~ #j_data:atravessavel run return fail
execute if block ~ ~-2 ~ #j_data:atravessavel run return fail
execute if entity @n[distance=..0.25,tag=contar_espaco] run return fail

#particle happy_villager ~ ~ ~ 0.0 0.0 0.0 0 0 force
scoreboard players add aux j.blocks 2
return 1