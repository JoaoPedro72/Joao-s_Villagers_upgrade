
execute if score 300 j.ticks matches 208 as @e[tag=j.bloco,tag=j.bloco.guarda] at @s run function j_villagers_update:bancadas/procurar_dono {job:AI_guarda,job_function:"j_villagers_update:guarda/transformar_em"}

execute if score 300 j.ticks matches 218 as @e[tag=AI_guarda,tag=j.tem_bloco] at @s run function j_villagers_update:bancadas/existe_bancada
