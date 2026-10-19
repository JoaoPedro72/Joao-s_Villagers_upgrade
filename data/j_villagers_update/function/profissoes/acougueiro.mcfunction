# Parametros:
# as @s at @s

execute if block ~ ~ ~ #j_data:cerca_e_parede run data modify entity @s Motion[1] set value 0.5d
execute if block ~ ~ ~ #j_data:cerca_e_parede run tp ^ ^ ^.5

# Controle do tempo
execute as @s[scores={j.cooldown=1..}] run return -1
execute unless score @s j.num.modo matches 0.. run scoreboard players set @s j.num.modo 0

function j_ai:carregar_raycast
execute if score 300 j.ticks matches 1 run function j_ai:lost_target with storage j:raycast

execute as @s[scores={j.num.modo=0}] run function j_villagers_update:fazer/reproduzir/macro1 {id:cow}
execute as @s[scores={j.num.modo=1}] run function j_villagers_update:fazer/matar/macro1 {id:cow}
execute as @s[scores={j.num.modo=2}] run function j_villagers_update:fazer/reproduzir/macro1 {id:sheep}
execute as @s[scores={j.num.modo=3}] run function j_villagers_update:fazer/matar/macro1 {id:sheep}
execute as @s[scores={j.num.modo=4}] run function j_villagers_update:fazer/reproduzir/macro1 {id:chicken}
execute as @s[scores={j.num.modo=5}] run function j_villagers_update:fazer/matar/macro1 {id:chicken}
execute as @s[scores={j.num.modo=6}] run function j_villagers_update:fazer/reproduzir/macro1 {id:pig}
execute as @s[scores={j.num.modo=7}] run function j_villagers_update:fazer/matar/macro1 {id:pig}

execute as @s[scores={j.cooldown=0}] run return -1

function j_ai:lost_target with storage j:raycast
scoreboard players add @s j.num.modo 1
scoreboard players set @s[scores={j.num.modo=8..}] j.num.modo 0
