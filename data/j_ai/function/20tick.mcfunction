execute unless score 20 j.ticks matches 1 run return fail

#Salva a velocidade do mob na scoreboard para usar em outras funções
execute as @e[tag=AI] store result score @s j.mob.speed run attribute @s movement_speed get 100

#Controla o tempo entre os pulos dos mobs com IA personalizada
execute as @e[tag=AI] at @s unless block ~ ~-0.5 ~ #j_data:atravessavel unless score @s j.jump >= pulo_cooldown j.num run scoreboard players add @s j.jump 1
execute as @e[tag=AI] at @s unless block ~ ~-0.5 ~ #j_data:atravessavel if score @s j.jump > pulo_cooldown j.num run scoreboard players remove @s j.jump 1

#Era para fazer o controle do cooldown dos ataques, mas acaboou sendo usado para todos os cooldowns
execute as @e[tag=AI] unless score @s j.cooldown <= 0 j.num run scoreboard players remove @s j.cooldown 1
execute as @e[tag=AI, scores={j.cooldown=..-1}] run scoreboard players set @s j.cooldown 0
