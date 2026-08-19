#Vilage Healer AI
execute if entity @n[tag=undead,distance=4..15] unless entity @n[tag=vilage,tag=hurt,distance=1..15] run effect give @s slowness 2 10 true
execute if entity @n[tag=vilage,tag=hurt,tag=!golen,distance=..5] if score @s j.cooldown matches 0 run function j_villagers_update:clerico/heal_aura
execute if entity @n[tag=undead,distance=..5] if score @s j.cooldown matches 0 run function j_villagers_update:clerico/heal_aura

execute if score 300 j.ticks matches 1 run function j_ai:lost_target with storage j:raycast

function j_ai:carregar_raycast

execute if score 300 j.ticks matches 1 run function j_ai:lost_target with storage j:raycast

function j_villagers_update:clerico/walk_toward_hurt with storage j:raycast
execute if score 100 j.ticks matches 1 run function j_villagers_update:clerico/look_for_hurt with storage j:raycast

execute if score 300 j.ticks matches 1 run function j_ai:lost_target with storage j:raycast

