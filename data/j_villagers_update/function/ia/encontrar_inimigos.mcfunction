tag @s remove j.has_target


$tag @e[tag=$(id).target,tag=!agressive] remove $(id).target

$execute as @e[distance=25..,tag=$(id).target] run tag @s remove $(id).target 

$execute if entity @e[tag=$(id).target,distance=..25] run return run tag @s add j.has_target

#marca inimigo proximo como alvo
$tag @n[tag=agressive,distance=..8,type=!creeper] add $(id).target
$execute unless entity @n[tag=$(id).target] run tag @n[tag=agressive,distance=..25,tag=j.visto,type=!creeper] add $(id).target
#testa se inimigo distante esta no campo de visão
$execute unless entity @n[tag=$(id).target] anchored eyes as @e[tag=agressive,type=!creeper,distance=..25] facing entity @s eyes positioned ^ ^-0.5 ^1.5 run function j_villagers_update:ia/raycast with storage j:raycast


$execute if entity @n[tag=$(id).target] run playsound entity.villager.yes neutral @a[distance=..4]
$execute if entity @n[tag=$(id).target] run tellraw @a[distance=..4] {"text":"<$(nome)> Inimigo avistado"}
$execute if entity @n[tag=$(id).target] run tag @s add j.has_target