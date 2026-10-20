
#prepara raycast
execute store result storage j:raycast id int 1 run scoreboard players get @s j.ids
data modify storage j:raycast follow_distance set value 15
data modify storage j:raycast nome set from entity @s CustomName
execute store result storage j:raycast dano int 1 run scoreboard players get @s j_dano

execute store result storage j:raycast id_bloco int 1 run scoreboard players get @s j.ids.bloco

execute as @s[tag=j.data_saved] run return fail

execute store result entity @s data."j:raycast".id int 1 run scoreboard players get @s j.ids
data modify entity @s data."j:raycast".follow_distance set value 15
data modify entity @s data."j:raycast".nome set from entity @s CustomName
execute store result entity @s data."j:raycast".dano int 1 run scoreboard players get @s j_dano
tag @s add j.data_saved