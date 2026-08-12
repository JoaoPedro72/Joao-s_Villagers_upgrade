kill @e[type=marker,tag=j_path_used,tag=!j_path]

#se o bloco a frente e acima da frente
execute if score 100 j.ticks < 50 j.num align xyz positioned ~.5 ~ ~.5 rotated ~ 0 unless block ^ ^.5 ^1 #j_data:atravessavel unless block ^ ^1.5 ^1 #j_data:atravessavel at @s run function j_ai:rotate_wander {Rotation:-25}
execute if score 100 j.ticks > 50 j.num align xyz positioned ~.5 ~ ~.5 rotated ~ 0 unless block ^ ^.5 ^1 #j_data:atravessavel unless block ^ ^1.5 ^1 #j_data:atravessavel at @s run function j_ai:rotate_wander {Rotation:25}

#se no mesmo bloco a acima do mesmo bloco
execute if score 100 j.ticks < 50 j.num align xyz positioned ~.5 ~ ~.5 rotated ~ 0 unless block ^ ^.5 ^ #j_data:atravessavel unless block ^ ^1.5 ^ #j_data:atravessavel at @s run function j_ai:rotate_wander {Rotation:-25}
execute if score 100 j.ticks > 50 j.num align xyz positioned ~.5 ~ ~.5 rotated ~ 0 unless block ^ ^.5 ^ #j_data:atravessavel unless block ^ ^1.5 ^ #j_data:atravessavel at @s run function j_ai:rotate_wander {Rotation:25}

#se no mesmo bloco é cerca
execute if score 100 j.ticks < 50 j.num align xyz positioned ~.5 ~ ~.5 rotated ~ 0 if block ^ ^.5 ^.5 #j_data:cerca_e_parede at @s run function j_ai:rotate_wander {Rotation:-15}
execute if score 100 j.ticks > 50 j.num align xyz positioned ~.5 ~ ~.5 rotated ~ 0 if block ^ ^.5 ^.5 #j_data:cerca_e_parede at @s run function j_ai:rotate_wander {Rotation:15}

summon marker ^ ^ ^1.5 {Tags:["j_path","j_path_used"]}

execute store result score @s j.alvo.x run data get entity @n[distance=..2,tag=j_path] Pos[0] 100
execute store result score @s j.alvo.y run data get entity @n[distance=..2,tag=j_path] Pos[1] 100
execute store result score @s j.alvo.z run data get entity @n[distance=..2,tag=j_path] Pos[2] 100

execute store result score @s j.pos.x run data get entity @s Pos[0] 100
execute store result score @s j.pos.y run data get entity @s Pos[1] 100
execute store result score @s j.pos.z run data get entity @s Pos[2] 100

scoreboard players operation @s j.alvo.x -= @s j.pos.x
scoreboard players operation @s j.alvo.y -= @s j.pos.y
scoreboard players operation @s j.alvo.z -= @s j.pos.z

scoreboard players operation @s j.alvo.x *= @s j.mob.speed
scoreboard players operation @s j.alvo.z *= @s j.mob.speed

execute store result entity @s Motion[0] double 0.00004 run scoreboard players get @s j.alvo.x
execute store result entity @s Motion[2] double 0.00004 run scoreboard players get @s j.alvo.z

execute if score @s j.jump >= pulo_cooldown j.num if score @s j.alvo.y > pulo j.num run tag @s add quer_pular
execute if score @s j.jump >= pulo_cooldown j.num rotated ~ 0 unless block ^ ^ ^1 #j_data:atravessavel unless block ^ ^ ^1 #j_data:cerca_e_parede run tag @s add quer_pular

execute if entity @s[tag=quer_pular] unless block ~ ~-.5 ~ #j_data:nao_pular_quando_em_cima run data modify entity @s Motion[1] set value 0.45d
execute if entity @s[tag=quer_pular] run scoreboard players set @s j.jump 0
execute if entity @s[tag=quer_pular] run tag @s remove quer_pular


execute if score @s j.jump = pulo_cooldown j.num if block ~ ~-0.5 ~ #j_data:atravessavel run scoreboard players set @s j.jump 0

execute if score @s j.jump = pulo_cooldown j.num run scoreboard players remove @s j.jump 1

tag @e[tag=j_path] remove j_path
kill @e[tag=j_path_used]
