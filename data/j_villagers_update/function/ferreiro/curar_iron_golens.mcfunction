scoreboard players add @s j.cooldown 40
effect give @n[type=iron_golem] instant_health 1 5 true

execute at @n[type=iron_golem] run particle minecraft:happy_villager ~ ~ ~ 1 2 1 1 50
playsound entity.villager.yes neutral @a[distance=..15] ~ ~ ~ 2
playsound entity.iron_golem.repair neutral @a[distance=..15] ~ ~ ~
playsound entity.iron_golem.repair neutral @a[distance=..15] ~ ~ ~

