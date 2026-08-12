#Salva na mesa o UUID do guarda
$execute store result score @s j.UUID.0 run data get entity @n[tag=$(job),tag=!j.tem_bloco] UUID[0]
$execute store result score @s j.UUID.1 run data get entity @n[tag=$(job),tag=!j.tem_bloco] UUID[1]
$execute store result score @s j.UUID.2 run data get entity @n[tag=$(job),tag=!j.tem_bloco] UUID[2]
$execute store result score @s j.UUID.3 run data get entity @n[tag=$(job),tag=!j.tem_bloco] UUID[3]

#Salva no guarda a posição da bancada
$execute as @n[tag=$(job),tag=!j.tem_bloco] store result score @s j.mesa.x run data get entity @n[tag=j.bloco,tag=!j.tem_dono] Pos[0]
$execute as @n[tag=$(job),tag=!j.tem_bloco] store result score @s j.mesa.y run data get entity @n[tag=j.bloco,tag=!j.tem_dono] Pos[1]
$execute as @n[tag=$(job),tag=!j.tem_bloco] store result score @s j.mesa.z run data get entity @n[tag=j.bloco,tag=!j.tem_dono] Pos[2]

$scoreboard players operation @n[tag=$(job),tag=!j.tem_bloco] j.ids.bloco = @s j.ids

$execute as @n[tag=$(job),tag=!j.tem_bloco] run effect give @s minecraft:glowing 20

$tag @n[tag=$(job),tag=!j.tem_bloco] add j.tem_bloco
tag @s add j.tem_dono
