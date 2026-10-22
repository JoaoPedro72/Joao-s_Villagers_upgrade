$tag @e[tag=!hurt,tag=$(id).target] remove $(id).target

$execute if entity @e[tag=$(id).target,distance=..25] run return fail
$execute as @e[distance=25..,tag=$(id).target] run tag @s remove $(id).target

execute unless entity @n[type=iron_golem,distance=..15] run return fail

execute unless entity @e[tag=hurt,tag=vilage,type=iron_golem,distance=..3] as @e[tag=hurt,tag=vilage,type=iron_golem,distance=..15] anchored eyes facing entity @s eyes positioned ^ ^-0.5 ^1.5 run function j_ai:raycast with entity @s data."j:raycast"

$execute unless entity @n[tag=$(id).target] run tag @n[tag=hurt,tag=vilage,type=iron_golem,distance=..3] add $(id).target

$execute as @e[tag=$(id).target] unless entity @s[tag=vilage,type=iron_golem,tag=hurt] run tag @s remove $(id).target

$execute if entity @n[tag=$(id).target] run tag @s add j.has_target
$execute if entity @n[tag=$(id).target] run tellraw @a[distance=..7] {"text":"<Ferreiro> Reparando!"}