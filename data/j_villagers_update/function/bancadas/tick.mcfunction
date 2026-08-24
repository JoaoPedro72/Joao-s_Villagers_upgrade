
execute if score 300 j.ticks matches 208 as @e[tag=j.bloco,tag=j.bloco.guarda] at @s run function j_villagers_update:bancadas/procurar_dono {job:AI_guarda,job_function:"j_villagers_update:guarda/transformar_em"}
execute if score 300 j.ticks matches 218 as @e[tag=AI_guarda,tag=j.tem_bloco] at @s run function j_villagers_update:bancadas/existe_bancada


execute if score 300 j.ticks matches 108 as @e[tag=j.bloco,tag=j.bloco.arqueiro] at @s run function j_villagers_update:bancadas/procurar_dono {job:AI_arqueiro,job_function:"j_villagers_update:arqueiro/transformar_em"}
execute if score 300 j.ticks matches 118 as @e[tag=AI_arqueiro,tag=j.tem_bloco] at @s run function j_villagers_update:bancadas/existe_bancada


execute if score 300 j.ticks matches 8 as @e[tag=j.bloco,tag=j.bloco.mago] at @s run function j_villagers_update:bancadas/procurar_dono {job:AI_mago,job_function:"j_villagers_update:mago/transformar_em"}
execute if score 300 j.ticks matches 18 as @e[tag=AI_mago,tag=j.tem_bloco] at @s run function j_villagers_update:bancadas/existe_bancada
