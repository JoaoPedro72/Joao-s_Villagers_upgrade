execute if score 300 j.ticks matches 1 run function j_ai:lost_target with entity @s data."j:raycast"

#$say modo matar $(id)

execute unless entity @n[type=sheep,distance=..15,nbt={Age:0,Sheared:0b}] run return run scoreboard players set @s j.cooldown 15

execute as @s[tag=!j.has_target] run data modify entity @s data."j:raycast" merge value {alvo:sheep}
execute as @s[tag=!j.has_target] run function j_villagers_update:fazer/procurar/macro with entity @s data."j:raycast"
execute as @s[tag=!j.has_target] run return run scoreboard players set @s j.cooldown 15

function j_villagers_update:fazer/tosar/macro2 with entity @s data."j:raycast"