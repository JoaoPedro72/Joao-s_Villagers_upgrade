tag @s remove j.has_target

$execute if entity @e[tag=$(id).target,distance=..25] run return run tag @s add j.has_target

$execute as @e[distance=25..,tag=$(id).target] run tag @s remove $(id).target 

$execute unless entity @e[type=$(alvo),distance=..5,nbt={Age:0}] anchored eyes as @e[type=$(alvo),distance=..15,nbt={Age:0}] facing entity @s eyes positioned ^ ^-0.5 ^1.5 run function j_ai:raycast_filtrado with storage j:raycast

$execute unless entity @n[tag=$(id).target] run tag @n[type=$(alvo),distance=..5,nbt={Age:0}] add $(id).target

$tag @e[type=!$(alvo),tag=$(id).target] remove $(id).target

$execute if entity @n[tag=$(id).target] run tag @s add j.has_target