schedule function j_villagers_update:tick 1t append

execute as @e[tag=vilage,type=zombie_villager] run function j_villagers_update:zombie_villager
execute as @e[tag=undead,type=villager] run function j_villagers_update:dar_tags

execute as @e[type=villager,tag=!AI] run tag @s add AI

execute as @e[tag=AI_guarda] at @s run function j_villagers_update:guarda/tick
execute as @e[tag=AI_arqueiro] at @s run function j_villagers_update:arqueiro/tick
execute as @e[tag=AI_mago] at @s run function j_villagers_update:mago/tick

execute as @e[type=villager] at @s if data entity @s VillagerData{profession:"minecraft:cleric"} run function j_villagers_update:clerico/tick

execute as @e[type=villager] at @s if data entity @s VillagerData{profession:"minecraft:weaponsmith"} run function j_villagers_update:ferreiro/tick
execute as @e[type=villager] at @s if data entity @s VillagerData{profession:"minecraft:armorer"} run function j_villagers_update:ferreiro/tick
execute as @e[type=villager] at @s if data entity @s VillagerData{profession:"minecraft:toolsmith"} run function j_villagers_update:ferreiro/tick

execute if score 40 j.ticks matches 30 as @e[type=villager] at @s if data entity @s VillagerData{profession:"minecraft:librarian"} run function j_villagers_update:bibliotecario/tick
execute as @e[type=villager] at @s if data entity @s VillagerData{profession:"minecraft:butcher"} run function j_villagers_update:acogueiro/tick
execute if score 40 j.ticks matches 10 as @e[type=villager] at @s if data entity @s VillagerData{profession:"minecraft:farmer"} run function j_villagers_update:fazendeiro/tick

execute if score 20 j.ticks matches 10 as @e[type=villager] at @s run function j_villagers_update:ia/iluminar

execute as @e[type=marker,tag=bola_de_fogo_mago] at @s run function j_villagers_update:mago/magia_mover

function j_villagers_update:spawnar_guardas
execute if score 20 j.ticks matches 16 run function j_villagers_update:bancadas/invocar_e_remover

execute as @e[tag=undead] at @s run data modify entity @s last_hurt_by_mob set from entity @n[predicate=j_villagers_update:inimigos/undead, distance=..15, type=!witch] UUID
execute as @e[tag=illager] at @s run data modify entity @s last_hurt_by_mob set from entity @n[predicate=j_villagers_update:inimigos/illager, distance=..15] UUID

function j_villagers_update:bancadas/tick