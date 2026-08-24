#chama função de criação do bloco
execute as @n[tag=j.criar_bancada_guarda] at @s align xyz run function j_villagers_update:guarda/bancada
execute as @n[tag=j.criar_bancada_mago] at @s align xyz run function j_villagers_update:mago/bancada
execute as @n[tag=j.criar_bancada_arqueiro] at @s align xyz run function j_villagers_update:arqueiro/bancada

#remove hitbox e bloco de barreira
execute as @e[tag=j.bloco.hitbox] at @s on attacker run kill @n[tag=j.bloco.hitbox]
execute as @e[tag=j.bloco.hitbox] at @s unless entity @n[distance=..1,tag=j.bloco] run kill @s
execute as @e[tag=j.bloco] at @s unless entity @n[distance=..1,tag=j.bloco.hitbox] run fill ~ ~ ~ ~ ~ ~ air replace barrier
###


# Dropa o bloco
execute as @e[tag=j.bloco.guarda] at @s unless entity @n[distance=..1,tag=j.bloco.hitbox] run loot spawn ~ ~ ~ loot j_villagers_update:bancada_guarda
execute as @e[tag=j.bloco.mago] at @s unless entity @n[distance=..1,tag=j.bloco.hitbox] run loot spawn ~ ~ ~ loot j_villagers_update:bancada_mago
execute as @e[tag=j.bloco.arqueiro] at @s unless entity @n[distance=..1,tag=j.bloco.hitbox] run loot spawn ~ ~ ~ loot j_villagers_update:bancada_arqueiro


#mata o bloco
execute as @e[tag=j.bloco] at @s unless entity @n[distance=..1,tag=j.bloco.hitbox] run kill
###