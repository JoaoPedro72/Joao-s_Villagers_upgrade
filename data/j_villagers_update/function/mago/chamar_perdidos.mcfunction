execute rotated 0 0 run particle minecraft:portal ^1 ^1 ^ 0 1 0 0 2 force @a[distance=..20]
execute rotated 0 0 run particle minecraft:portal ^-1 ^1 ^ 0 1 0 0 2 force @a[distance=..20]
execute rotated 0 0 run particle minecraft:portal ^ ^1 ^1 0 1 0 0 2 force @a[distance=..20]
execute rotated 0 0 run particle minecraft:portal ^ ^1 ^-1 0 1 0 0 2 force @a[distance=..20]

execute rotated 10 0 run particle minecraft:portal ^1 ^1 ^ 0 1 0 0 2 force @a[distance=..20]
execute rotated 10 0 run particle minecraft:portal ^-1 ^1 ^ 0 1 0 0 2 force @a[distance=..20]
execute rotated 10 0 run particle minecraft:portal ^ ^1 ^1 0 1 0 0 2 force @a[distance=..20]
execute rotated 10 0 run particle minecraft:portal ^ ^1 ^-1 0 1 0 0 2 force @a[distance=..20]

execute rotated 20 0 run particle minecraft:portal ^1 ^1 ^ 0 1 0 0 2 force @a[distance=..20]
execute rotated 20 0 run particle minecraft:portal ^-1 ^1 ^ 0 1 0 0 2 force @a[distance=..20]
execute rotated 20 0 run particle minecraft:portal ^ ^1 ^1 0 1 0 0 2 force @a[distance=..20]
execute rotated 20 0 run particle minecraft:portal ^ ^1 ^-1 0 1 0 0 2 force @a[distance=..20]

execute rotated 30 0 run particle minecraft:portal ^1 ^1 ^ 0 1 0 0 2 force @a[distance=..20]
execute rotated 30 0 run particle minecraft:portal ^-1 ^1 ^ 0 1 0 0 2 force @a[distance=..20]
execute rotated 30 0 run particle minecraft:portal ^ ^1 ^1 0 1 0 0 2 force @a[distance=..20]
execute rotated 30 0 run particle minecraft:portal ^ ^1 ^-1 0 1 0 0 2 force @a[distance=..20]

execute rotated 40 0 run particle minecraft:portal ^1 ^1 ^ 0 1 0 0 2 force @a[distance=..20]
execute rotated 40 0 run particle minecraft:portal ^-1 ^1 ^ 0 1 0 0 2 force @a[distance=..20]
execute rotated 40 0 run particle minecraft:portal ^ ^1 ^1 0 1 0 0 2 force @a[distance=..20]
execute rotated 40 0 run particle minecraft:portal ^ ^1 ^-1 0 1 0 0 2 force @a[distance=..20]

execute rotated 40 0 run particle minecraft:portal ^1 ^1 ^ 0 1 0 0 2 force @a[distance=..20]
execute rotated 40 0 run particle minecraft:portal ^-1 ^1 ^ 0 1 0 0 2 force @a[distance=..20]
execute rotated 40 0 run particle minecraft:portal ^ ^1 ^1 0 1 0 0 2 force @a[distance=..20]
execute rotated 40 0 run particle minecraft:portal ^ ^1 ^-1 0 1 0 0 2 force @a[distance=..20]

execute rotated 50 0 run particle minecraft:portal ^1 ^1 ^ 0 1 0 0 2 force @a[distance=..20]
execute rotated 50 0 run particle minecraft:portal ^-1 ^1 ^ 0 1 0 0 2 force @a[distance=..20]
execute rotated 50 0 run particle minecraft:portal ^ ^1 ^1 0 1 0 0 2 force @a[distance=..20]
execute rotated 50 0 run particle minecraft:portal ^ ^1 ^-1 0 1 0 0 2 force @a[distance=..20]

execute rotated 60 0 run particle minecraft:portal ^1 ^1 ^ 0 1 0 0 2 force @a[distance=..20]
execute rotated 60 0 run particle minecraft:portal ^-1 ^1 ^ 0 1 0 0 2 force @a[distance=..20]
execute rotated 60 0 run particle minecraft:portal ^ ^1 ^1 0 1 0 0 2 force @a[distance=..20]
execute rotated 60 0 run particle minecraft:portal ^ ^1 ^-1 0 1 0 0 2 force @a[distance=..20]

execute rotated 70 0 run particle minecraft:portal ^1 ^1 ^ 0 1 0 0 2 force @a[distance=..20]
execute rotated 70 0 run particle minecraft:portal ^-1 ^1 ^ 0 1 0 0 2 force @a[distance=..20]
execute rotated 70 0 run particle minecraft:portal ^ ^1 ^1 0 1 0 0 2 force @a[distance=..20]
execute rotated 70 0 run particle minecraft:portal ^ ^1 ^-1 0 1 0 0 2 force @a[distance=..20]

execute rotated 80 0 run particle minecraft:portal ^1 ^1 ^ 0 1 0 0 2 force @a[distance=..20]
execute rotated 80 0 run particle minecraft:portal ^-1 ^1 ^ 0 1 0 0 2 force @a[distance=..20]
execute rotated 80 0 run particle minecraft:portal ^ ^1 ^1 0 1 0 0 2 force @a[distance=..20]
execute rotated 80 0 run particle minecraft:portal ^ ^1 ^-1 0 1 0 0 2 force @a[distance=..20]

effect give @n[tag=perdido] glowing 1
playsound minecraft:block.portal.travel neutral @a[distance=..10] ~ ~ ~ 0.05 1 0.1
playsound minecraft:entity.villager.yes neutral @a[distance=..10]

scoreboard players add @s cooldown 1
effect give @s slowness 1 100 true
execute store result score @s mob_speed run attribute @s minecraft:movement_speed get 100

execute if score @s cooldown < cem numero run return fail

scoreboard players set @s cooldown 0
tp @n[tag=perdido] @s