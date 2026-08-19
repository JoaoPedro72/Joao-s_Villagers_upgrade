# Villager Guarda
# parametros as @s at @s

tag @s remove perdido

execute if entity @s[type=mannequin] if block ~ ~.6 ~ water run data modify entity @s Motion[1] set value 0.05
execute if entity @s[type=mannequin] if block ~ ~.6 ~ water run scoreboard players set @s j.jump 0

#Come para recuperar vida
execute if entity @s[tag=com_fome] run function j_ai:comer
execute if entity @s[tag=com_fome] run return fail

#prepara raycast
function j_ai:carregar_raycast

#função para remover alvo caso ele saia de vista
execute if score 300 j.ticks matches 1 run function j_ai:lost_target with storage j:raycast

#função para caso tenha inimigo
function j_villagers_update:guarda/atacar_inimigo with storage j:raycast

#função para encontrar inimigo
execute if score 40 j.ticks matches 16 run function j_villagers_update:ia/encontrar_inimigos with storage j:raycast

#Condições para patrulhar
execute if entity @s[tag=tem_alvo] run return fail
execute if entity @e[tag=agressive,distance=..5,type=!creeper] run return fail

#Se estiver com vida baixa marca para comer
execute if score 100 j.ticks matches 0 if entity @s[tag=hurt] run tag @s add com_fome
execute if score 100 j.ticks matches 0 if entity @s[tag=hurt] run scoreboard players set @s j.cooldown 6

#Se tiver perto de vilagers ele vaga
execute as @s[tag=!j.tem_bloco] run function j_villagers_update:ia/wander

execute as @s[tag=j.tem_bloco] run function j_villagers_update:ia/ir_ate_bancada with storage j:raycast


