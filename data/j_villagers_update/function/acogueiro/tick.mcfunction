# Parametros:
# as @s at @s

# Controle do tempo
tag @s[scores={j.cooldown=..0}] add quer_matar_vaca
tag @s[scores={j.cooldown=..0}] add quer_reproduzir_vaca

execute as @s[scores={j.cooldown=1..}] run return -1


# salva variaveis
function j_ai:carregar_raycast
execute if score 300 j.ticks matches 1 run function j_ai:lost_target with storage j:raycast
execute if score 300 j.ticks matches 1 run tag @s remove achou_vacas
execute if score 20 j.ticks matches 12 run execute store result score @s j.num_vacas if entity @e[type=minecraft:cow,distance=..15,nbt={Age:0}]

tag @s[scores={j.num_vacas=6..}] remove quer_reproduzir_vaca
tag @s[tag=quer_reproduzir_vaca] remove quer_matar_vaca
tag @s[scores={j.num_vacas=..4}] remove quer_matar_vaca



# Logica
execute if entity @s[tag=!achou_vacas,tag=quer_reproduzir_vaca] if score 100 j.ticks matches 55 run function j_villagers_update:acogueiro/encontrar_vacas with storage j:raycast
execute if entity @s[tag=!achou_vacas,tag=quer_matar_vaca] if score 100 j.ticks matches 55 run function j_villagers_update:acogueiro/encontrar_vacas with storage j:raycast

execute if entity @s[tag=achou_vacas,tag=quer_reproduzir_vaca] run function j_villagers_update:acogueiro/alimentar_vacas with storage j:raycast
execute if entity @s[tag=achou_vacas,tag=quer_matar_vaca] run function j_villagers_update:acogueiro/matar_vaca with storage j:raycast
