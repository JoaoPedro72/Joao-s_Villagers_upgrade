$execute if entity @n[tag=agressive,tag=$(id).target] run return fail

$tag @n[tag=!agressive,tag=$(id).target] remove $(id).target

$tag @n[type=villager,distance=10..] add $(id).target
