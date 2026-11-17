particle minecraft:flame ~ ~ ~ 02 00 00 0.05 0 force
particle minecraft:flame ~ ~ ~ -2 00 00 0.05 0 force
particle minecraft:flame ~ ~ ~ 00 00 02 0.05 0 force
particle minecraft:flame ~ ~ ~ 00 00 -2 0.05 0 force
particle minecraft:flame ~ ~ ~ 00 02 00 0.05 0 force
particle minecraft:flame ~ ~ ~ 00 -2 00 0.05 0 force

particle minecraft:flame ~ ~ ~ 02 00 02 0.05 0 force
particle minecraft:flame ~ ~ ~ -2 00 02 0.05 0 force
particle minecraft:flame ~ ~ ~ 02 00 -2 0.05 0 force
particle minecraft:flame ~ ~ ~ -2 00 -2 0.05 0 force

particle minecraft:flame ~ ~ ~ 02 02 00 0.05 0 force
particle minecraft:flame ~ ~ ~ -2 02 00 0.05 0 force
particle minecraft:flame ~ ~ ~ 00 02 02 0.05 0 force
particle minecraft:flame ~ ~ ~ 00 02 -2 0.05 0 force

particle minecraft:flame ~ ~ ~ 02 -2 00 0.05 0 force
particle minecraft:flame ~ ~ ~ -2 -2 00 0.05 0 force
particle minecraft:flame ~ ~ ~ 00 -2 02 0.05 0 force
particle minecraft:flame ~ ~ ~ 00 -2 -2 0.05 0 force

playsound entity.generic.explode neutral @a[distance=..20] ~ ~ ~ 1 1 1

execute as @e[tag=agressive,distance=..2.5,type=!creeper] run damage @s 17 magic by @n[tag=AI_mago]
execute as @e[tag=agressive,distance=..2.5,type=!creeper] run effect give @s slowness 4 2 true
execute as @e[tag=agressive,distance=..2.5,type=!creeper] run data merge entity @s {Fire:100}

kill @s