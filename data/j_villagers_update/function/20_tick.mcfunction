execute unless score j_village_20_tick j_ticks matches 15 run return fail

execute as @e[type=villager] run tag @s add AI

execute as @e[type=mannequin, tag=AI_guarda] at @s if predicate j_villagers_update:makesound run playsound minecraft:entity.villager.ambient neutral @a[distance=..20]
execute as @e[type=mannequin, tag=AI_arqueiro] at @s if predicate j_villagers_update:makesound run playsound minecraft:entity.villager.ambient neutral @a[distance=..20]
execute as @e[type=mannequin, tag=AI_mago] at @s if predicate j_villagers_update:makesound run playsound minecraft:entity.villager.ambient neutral @a[distance=..20]
