$execute store result score @s j.num run data get entity @n[type=minecraft:villager] Gossips[{Type:"minor_positive",Target:$(UUID)}].Value

$data modify entity @n[type=minecraft:villager] Gossips append value {Type:"minor_positive",Target:$(UUID),Value:5}
$execute store result entity @n[type=minecraft:villager] Gossips[{Type:"minor_positive",Target:$(UUID)}].Value int 1 run scoreboard players add @s j.num 5
