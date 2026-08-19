schedule function j_villagers_update:spawnar_guardas 10t append

execute as @e[type=villager,tag=criar_guarda] at @s run function j_villagers_update:guarda/transformar_em
execute as @e[type=villager,tag=criar_arqueiro] at @s run function j_villagers_update:arqueiro/transformar_em
execute as @e[type=villager,tag=criar_mago] at @s run function j_villagers_update:mago/transformar_em

execute as @e[tag=base_criar_guarda] as @e[type=villager,tag=!custom,tag=!especial,distance=..3] at @s if data entity @s {Age:0} if data entity @s VillagerData{profession:"minecraft:none"} run function j_villagers_update:guarda/transformar_em
execute as @e[tag=base_criar_arqueiro] as @e[type=villager,tag=!custom,tag=!especial,distance=..3] at @s if data entity @s {Age:0} if data entity @s VillagerData{profession:"minecraft:none"} run function j_villagers_update:arqueiro/transformar_em
execute as @e[tag=base_criar_mago] as @e[type=villager,tag=!custom,tag=!especial,distance=..3] at @s if data entity @s {Age:0} if data entity @s VillagerData{profession:"minecraft:none"} run function j_villagers_update:mago/transformar_em

execute as @e[type=villager,tag=!custom,tag=!reprovado,tag=!especial] at @s if data entity @s {Age:0} if data entity @s VillagerData{profession:"minecraft:none"} if predicate j_villagers_update:guarda run function j_villagers_update:guarda/transformar_em
execute as @e[type=villager,tag=!custom,tag=!reprovado,tag=!especial] at @s if data entity @s {Age:0} if data entity @s VillagerData{profession:"minecraft:none"} if predicate j_villagers_update:arqueiro run function j_villagers_update:arqueiro/transformar_em
execute as @e[type=villager,tag=!custom,tag=!reprovado,tag=!especial] at @s if data entity @s {Age:0} if data entity @s VillagerData{profession:"minecraft:none"} if predicate j_villagers_update:mago run function j_villagers_update:mago/transformar_em

execute as @e[type=villager,tag=!custom,tag=!reprovado,tag=!especial] if data entity @s {Age:0} if data entity @s VillagerData{profession:"minecraft:none"} run tag @s add reprovado
