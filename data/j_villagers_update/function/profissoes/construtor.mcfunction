#say oi
tag @s remove perdido

execute if block ~ ~ ~ minecraft:dirt_path if block ~03 ~ ~-1 minecraft:dirt_path if block ~03 ~ ~1 minecraft:dirt_path if block ~03 ~ ~00 minecraft:dirt_path run fill ~-1 ~ ~01 ~-1 ~ ~-1 minecraft:dirt_path replace #j_data:can_become_farmland
execute if block ~ ~ ~ minecraft:dirt_path if block ~03 ~ ~-1 minecraft:dirt_path if block ~-3 ~ ~1 minecraft:dirt_path if block ~-3 ~ ~00 minecraft:dirt_path run fill ~01 ~ ~01 ~01 ~ ~-1 minecraft:dirt_path replace #j_data:can_become_farmland

execute if block ~ ~ ~ minecraft:dirt_path if block ~03 ~ ~-1 minecraft:dirt_path if block ~1 ~ ~-3 minecraft:dirt_path if block ~00 ~ ~-3 minecraft:dirt_path run fill ~01 ~ ~01 ~-1 ~ ~01 minecraft:dirt_path replace #j_data:can_become_farmland
execute if block ~ ~ ~ minecraft:dirt_path if block ~03 ~ ~-1 minecraft:dirt_path if block ~1 ~ ~03 minecraft:dirt_path if block ~00 ~ ~03 minecraft:dirt_path run fill ~01 ~ ~-1 ~-1 ~ ~-1 minecraft:dirt_path replace #j_data:can_become_farmland

#execute if entity @n[tag=j.construcao,tag=!j.placed] run say construir

execute if entity @n[tag=agressive,distance=..15] run return fail

execute unless block ~ ~ ~ #air run function j_ai:move
execute if entity @n[tag=j.construcao,distance=..1] run function j_ai:move

execute if entity @n[tag=j.construcao,tag=!j.placed] if score @s j.cooldown matches 0 run function j_villagers_update:fazer/construir/main
execute if entity @n[tag=j.construcao,tag=!j.placed] run return fail

scoreboard players set @s j.cooldown 150
