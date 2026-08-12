
execute as @e[tag=j.bloco,tag=j.bloco.guarda] at @s run function j_villagers_update:bancadas/procurar_dono {job:AI_guarda}

execute as @e[tag=AI_guarda,tag=j.tem_bloco] at @s run function j_villagers_update:bancadas/existe_bancada