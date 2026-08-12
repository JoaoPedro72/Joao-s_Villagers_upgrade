#Vilage mage AI
# parametros as @s at @s

tag @s remove perdido

execute if entity @s if block ~ ~.6 ~ water run data modify entity @s Motion[1] set value 0.05
execute if entity @s if block ~ ~.6 ~ water run scoreboard players set @s j.jump 0

execute if entity @s[tag=com_fome] run function j_ai:beber_pocao
execute if entity @s[tag=com_fome] run return fail

#prepara raycast
function j_ai:carregar_raycast

#função para remover alvo caso ele saia de vista
execute if score 300 j.ticks matches 1 run function j_ai:lost_target with storage j:raycast

#função para caso tenha inimigo
function j_villagers_update:mago/mover_ate_inimigos with storage j:raycast

#função para encontrar inimigo
execute if score 20 j.ticks matches 12 run function j_villagers_update:ia/encontrar_inimigos with storage j:raycast

#Condições para patrulhar
execute if entity @s[tag=tem_alvo] run return fail

execute if score 100 j.ticks matches 0 if entity @s[tag=hurt] run tag @s add com_fome
execute if score 100 j.ticks matches 0 if entity @s[tag=hurt] run scoreboard players set @s j.cooldown 6

execute as @s[tag=!perdido] if entity @n[distance=..10,type=villager] if entity @n[tag=perdido,distance=..150] run function j_villagers_update:mago/chamar_perdidos

execute if entity @n[distance=..10,type=villager] run function j_ai:wander
execute if entity @n[distance=..10,type=villager] at @n[type=villager] unless entity @n[tag=agressive,distance=20] run return fail

execute if score 20 j.ticks matches 12 run function j_villagers_update:ia/procurar_villagers with storage j:raycast
execute run function j_villagers_update:ia/patrulhar with storage j:raycast

execute unless entity @e[distance=..25,type=villager,tag=!AI_guarda] run tag @s add perdido
