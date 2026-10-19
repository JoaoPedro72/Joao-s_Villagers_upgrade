#Vilage mage AI
# parametros as @s at @s

tag @s remove perdido

execute if block ~ ~ ~ #j_data:cerca_e_parede run data modify entity @s Motion[1] set value 0.5d

execute if entity @s[type=mannequin] if block ~ ~.6 ~ water run data modify entity @s Motion[1] set value 0.05
execute if entity @s[type=mannequin] if block ~ ~.6 ~ water run scoreboard players set @s j.jump 0

execute if entity @s[tag=com_fome] run function j_ai:beber_pocao
execute if entity @s[tag=com_fome] run return fail

#prepara raycast
function j_ai:carregar_raycast

#função para remover alvo caso ele saia de vista
execute if score 300 j.ticks matches 1 run function j_ai:lost_target with storage j:raycast

#função para caso tenha inimigo
execute as @s[tag=j.has_target] run function j_villagers_update:mago/mover_ate_inimigos with storage j:raycast

#função para encontrar inimigo
execute if score 40 j.ticks matches 7 run function j_villagers_update:ia/encontrar_inimigos with storage j:raycast

#Condições para patrulhar
execute if entity @s[tag=j.has_target] run return fail


#Se estiver com vida baixa marca para comer
execute if score 100 j.ticks matches 0 if entity @s[tag=hurt] run tag @s add com_fome
execute if score 100 j.ticks matches 0 if entity @s[tag=hurt] run scoreboard players set @s j.cooldown 6

execute as @s[tag=!perdido] if entity @n[distance=..10,type=villager] if entity @n[tag=perdido,distance=..150] run function j_villagers_update:mago/chamar_perdidos

#Se tiver perto de vilagers ele vaga
execute as @s[tag=!j.tem_bloco] run function j_villagers_update:ia/wander

execute as @s[tag=j.tem_bloco] run function j_villagers_update:ia/ir_ate_bancada with storage j:raycast
