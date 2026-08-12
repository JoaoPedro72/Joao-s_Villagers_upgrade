
tag @s remove tem_alvo

$tag @e[tag=$(id).target,predicate=!j_villagers_update:inimigos/vilage] remove $(id).target

$execute as @e[distance=25..,tag=$(id).target] run tag @s remove $(id).target 

$execute if entity @e[tag=$(id).target,distance=..25] run tag @s add tem_alvo
$execute if entity @e[tag=$(id).target,distance=..25] run return fail

#marca inimigo proximo como alvo
$tag @n[predicate=j_villagers_update:inimigos/vilage,distance=..8] add $(id).target
$execute unless entity @n[tag=$(id).target] run tag @n[predicate=j_villagers_update:inimigos/vilage,distance=..25,tag=seen] add $(id).target
#testa se inimigo distante esta no campo de visão
$execute unless entity @n[tag=$(id).target] anchored eyes as @e[predicate=j_villagers_update:inimigos/vilage,type=!creeper,distance=..25] facing entity @s eyes positioned ^ ^-0.5 ^1.5 run function j_villagers_update:ia/raycast with storage j:raycast

$tag @e[type=creeper,tag=$(id).target] remove $(id).target
$tag @e[tag=!agressive,tag=$(id).target] remove $(id).target

$execute if entity @n[tag=$(id).target] run playsound entity.villager.yes neutral @a[distance=..4]
$execute if entity @n[tag=$(id).target] run tellraw @a[distance=..4] {"text":"<$(nome)> Inimigo avistado"}
$execute if entity @n[tag=$(id).target] run tag @s add tem_alvo