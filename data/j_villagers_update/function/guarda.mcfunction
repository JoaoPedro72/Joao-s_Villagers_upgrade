# Villager Guarda
# parametros as @s at @s

tag @s remove perdido

execute if predicate j_villagers_update:makesound run playsound minecraft:entity.villager.ambient neutral @a[distance=..20]

execute if entity @s[type=mannequin] if block ~ ~.6 ~ water run data modify entity @s Motion[1] set value 0.05
execute if entity @s[type=mannequin] if block ~ ~.6 ~ water run scoreboard players set @s jump_cooldown 0

execute if entity @s[tag=com_fome] run function j_ai:comer
execute if entity @s[tag=com_fome] run return fail

#prepara raycast
function j_ai:carregar_raycast

#função para remover alvo caso ele saia de vista
execute if score j_village_300_tick j_ticks matches 1 run function j_ai:lost_target with storage j:raycast

#função para caso tenha inimigo
function j_villagers_update:guarda/atacar_inimigo with storage j:raycast

#função para encontrar inimigo
execute if score j_village_20_tick j_ticks matches 12 run function j_villagers_update:ia/encontrar_inimigos with storage j:raycast

#Condições para patrulhar
execute if entity @s[tag=tem_alvo] run return fail
execute if entity @e[tag=agressive,distance=..5,type=!creeper] run return fail

execute if score j_village_100_tick j_ticks matches 0 if entity @s[tag=hurt] run tag @s add com_fome
execute if score j_village_100_tick j_ticks matches 0 if entity @s[tag=hurt] run scoreboard players set @s attack_cooldown 6

execute if entity @n[distance=..15,type=villager,tag=!AI_guarda,tag=!AI_arqueiro] run function j_ai:wander

execute if entity @e[distance=..15,type=villager,tag=!AI_guarda] run return fail

execute if score j_village_20_tick j_ticks matches 12 run function j_villagers_update:ia/procurar_villagers with storage j:raycast
execute run function j_villagers_update:ia/patrulhar with storage j:raycast

execute unless entity @e[distance=..25,type=villager,tag=!AI_guarda] run tag @s add perdido
