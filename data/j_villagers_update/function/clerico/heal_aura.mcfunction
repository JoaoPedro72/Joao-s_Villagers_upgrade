particle minecraft:happy_villager ~ ~ ~ 4 0 4 1 100
particle minecraft:heart ~ ~ ~ 4 0 4 1 20
effect give @e[distance=..5,tag=vilage,tag=!golen] instant_health 5 1
effect give @e[distance=..5,tag=undead,type=!zombie_villager] instant_health 5 5
data merge entity @n[type=minecraft:zombie_villager,distance=..5] {ConversionTime:100}

tellraw @a[distance=..5] {"text":"<Clerico> Area Heal!"}
playsound entity.villager.celebrate neutral @a[distance=..10] ~ ~ ~

scoreboard players set @s j.cooldown 10