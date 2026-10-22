execute if score 300 j.ticks matches 1 run function j_ai:lost_target with entity @s data."j:raycast"
execute as @s[tag=!j.has_target] run function j_villagers_update:ferreiro/procurar_iron_golen with entity @s data."j:raycast"

execute unless entity @n[type=iron_golem, tag=hurt, distance=..8] run return run function j_villagers_update:ferreiro/andar_ate with entity @s data."j:raycast"

effect give @n[type=iron_golem] instant_health 1 5 true

execute at @n[type=iron_golem] run particle minecraft:happy_villager ~ ~ ~ 1 2 1 1 50
playsound entity.villager.yes neutral @a[distance=..15] ~ ~ ~ 2
playsound entity.iron_golem.repair neutral @a[distance=..15] ~ ~ ~
playsound entity.iron_golem.repair neutral @a[distance=..15] ~ ~ ~

scoreboard players add @s j.cooldown 40