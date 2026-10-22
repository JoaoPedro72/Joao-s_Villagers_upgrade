# vai ate a vaca
$execute if score @s j.cooldown_virar matches 0 run rotate @s facing entity @n[tag=$(id).target] feet
$execute unless entity @n[tag=$(id).target,distance=..2] run return run function j_ai:move

# quando alcança o animal alvo alimenta ela
$data merge entity @n[tag=$(id).target] {InLove:100}
$tag @n[tag=$(id).target] add in_love
$tag @n[tag=$(id).target] remove $(id).target
particle minecraft:happy_villager ~ ~ ~ 1 1 1 0 10
playsound minecraft:entity.horse.eat neutral @a[distance=..10]

# Garante que alimenta pelo menos um animal a qualquer distancia
# e alimenta outros animais ate 10 blocos
$execute at @n[type=$(alvo),tag=!in_love,nbt={Age:0}] run particle minecraft:happy_villager ~ ~ ~ 1 1 1 0 10
$data merge entity @n[type=$(alvo),tag=!in_love,nbt={Age:0}] {InLove:100}

$execute as @e[type=$(alvo), distance=..10] run data merge entity @s {InLove:100}
$execute as @e[type=$(alvo), distance=..10] at @s run playsound minecraft:entity.horse.eat neutral @a[distance=..10]

tag @e[tag=in_love] remove in_love

scoreboard players set @s j.cooldown 60