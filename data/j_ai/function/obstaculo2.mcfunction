function j_ai:rotate_wander with entity @s data."j.raycast"

#se o bloco a frente e acima da frente
execute unless block ^ ^.5 ^1 #j_data:atravessavel unless block ^ ^1.5 ^1 #j_data:atravessavel at @s run return run function j_ai:obstaculo2

#se no mesmo bloco a acima do mesmo bloco
execute unless block ^ ^.5 ^ #j_data:atravessavel unless block ^ ^1.5 ^ #j_data:atravessavel at @s run return run function j_ai:obstaculo2

#se no mesmo bloco é cerca
execute if block ^ ^.5 ^.5 #j_data:cerca_e_parede at @s run return fail