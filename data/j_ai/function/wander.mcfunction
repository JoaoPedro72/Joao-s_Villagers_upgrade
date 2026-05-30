execute unless score @s wander >= zero numero run scoreboard players set @s wander 0

execute if score @s wander > zero numero run scoreboard players remove @s wander 1

execute if score @s wander matches 0 if predicate {condition:"minecraft:random_chance",chance:0.01} run scoreboard players set @s wander 500
execute if score @s wander matches 0 run return fail


execute if score j_village_100_tick j_ticks matches 0 store result storage j:this Rotation int 1 run random value -45..45
execute if score j_village_100_tick j_ticks matches 0 run function j_ai:rotate_wander with storage j:this

execute if block ^ ^.5 ^1 #fences run function j_ai:rotate_wander with storage j:this
execute if block ^ ^.5 ^1 #walls run function j_ai:rotate_wander with storage j:this

execute unless block ^ ^1.5 ^1 #j_data:atravessavel run function j_ai:rotate_wander with storage j:this
execute unless block ^ ^1.5 ^1 #j_data:atravessavel run particle small_flame ^ ^1.5 ^1 0.0 0.0 0.0 0 1

execute if block ^ ^-.5 ^1 #j_data:atravessavel if block ^ ^-1.5 ^1 #j_data:atravessavel run function j_ai:rotate_wander with storage j:this
execute if block ^ ^-.5 ^1 #j_data:atravessavel if block ^ ^-1.5 ^1 #j_data:atravessavel run particle small_flame ^ ^-1.5 ^1 0.0 0.0 0.0 0 1

execute if block ^ ^-1 ^1 #j_data:atravessavel if block ^ ^-2 ^1 #j_data:atravessavel run return fail

scoreboard players operation @s mob_speed /= tres numero
function j_ai:move
execute store result score @s mob_speed run attribute @s minecraft:movement_speed get 100
