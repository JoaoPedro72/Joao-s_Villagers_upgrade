execute if score 300 j.ticks matches 1 run function j_ai:lost_target with entity @s data."j:raycast"

#$say modo reproduzir $(id)

$execute store result score @s j.num.animais if entity @e[type=$(id),distance=..15,nbt={Age:0}]
execute as @s[scores={j.num.animais=..1}] run return run scoreboard players set @s j.cooldown 2
execute as @s[scores={j.num.animais=6..}] run return run scoreboard players set @s j.cooldown 15


$execute as @s[tag=!j.has_target] run data merge storage j:raycast {alvo:$(id)}
function j_ai:carregar_raycast
execute as @s[tag=!j.has_target] run function j_villagers_update:fazer/procurar/macro with entity @s data."j:raycast"
execute as @s[tag=!j.has_target] run return run scoreboard players set @s j.cooldown 15

function j_villagers_update:fazer/reproduzir/macro2 with entity @s data."j:raycast"