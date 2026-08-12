
# vai ate a vaca
$rotate @s facing entity @n[tag=$(id).target] feet
$execute unless entity @n[tag=$(id).target,distance=..2] run function j_ai:move

# enquanto não alcança quebra a função
$execute if entity @n[tag=$(id).target,distance=..2] run tag @s remove achou_vacas
execute if entity @s[tag=achou_vacas] run return 0

# quando alcança uma vaca alimenta ela
$data merge entity @n[tag=$(id).target] {InLove:100}
$tag @n[tag=$(id).target] add in_love
$tag @n[tag=$(id).target] remove $(id).target
particle minecraft:happy_villager ~ ~ ~ 1 1 1 0 10
playsound minecraft:entity.horse.eat neutral @a[distance=..10]

# Garante que alimenta pelo menos uma vaca a qualquer distancia
# e alimenta outras vacas ate 10 blocos
execute at @n[type=cow,tag=!in_love,nbt={Age:0}] run particle minecraft:happy_villager ~ ~ ~ 1 1 1 0 10
data merge entity @n[type=cow,tag=!in_love,nbt={Age:0}] {InLove:100}
execute as @e[type=cow, distance=..10] run data merge entity @s {InLove:100}
execute as @e[type=cow, distance=..10] at @s run playsound minecraft:entity.horse.eat neutral @a[distance=..10]
tag @s remove quer_reproduzir_vaca
tag @e[tag=in_love] remove in_love

scoreboard players set @s j.cooldown 600