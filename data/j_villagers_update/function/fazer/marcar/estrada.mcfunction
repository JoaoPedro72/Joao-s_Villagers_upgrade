scoreboard objectives add j.caminho dummy

execute if score @s j.caminho matches ..0 run kill @n[tag=j.criar_estrada,distance=..2]
execute if score @s j.caminho matches ..0 run scoreboard players set @s j.caminho 13
execute positioned over world_surface if block ^ ^-1 ^ dirt_path positioned ^ ^ ^1 run return run function j_villagers_update:fazer/marcar/estrada

particle happy_villager ^ ^1 ^ 0.0 0.0 0.0 0 0 force

execute unless block ^01 ^ ^ #j_data:can_build_on unless block ^01 ^ ^ dirt_path run return fail
execute unless block ^00 ^ ^ #j_data:can_build_on unless block ^00 ^ ^ dirt_path run return fail
execute unless block ^-1 ^ ^ #j_data:can_build_on unless block ^-1 ^ ^ dirt_path run return fail

execute positioned ^02 ^ ^ positioned over world_surface if block ^ ^-1 ^ #minecraft:replaceable run fill ~ ~ ~ ~ ~-2 ~ air replace #replaceable
execute positioned ^01 ^ ^ positioned over world_surface if block ^ ^-1 ^ #minecraft:replaceable run fill ~ ~ ~ ~ ~-2 ~ air replace #replaceable
execute positioned ^00 ^ ^ positioned over world_surface if block ^ ^-1 ^ #minecraft:replaceable run fill ~ ~ ~ ~ ~-2 ~ air replace #replaceable
execute positioned ^-1 ^ ^ positioned over world_surface if block ^ ^-1 ^ #minecraft:replaceable run fill ~ ~ ~ ~ ~-2 ~ air replace #replaceable
execute positioned ^-2 ^ ^ positioned over world_surface if block ^ ^-1 ^ #minecraft:replaceable run fill ~ ~ ~ ~ ~-2 ~ air replace #replaceable

execute positioned ^02 ^ ^ positioned over world_surface if block ^ ^-1 ^ #minecraft:replaceable run fill ~ ~ ~ ~ ~-2 ~ air replace #replaceable
execute positioned ^01 ^ ^ positioned over world_surface if block ^ ^-1 ^ #minecraft:replaceable run fill ~ ~ ~ ~ ~-2 ~ air replace #replaceable
execute positioned ^00 ^ ^ positioned over world_surface if block ^ ^-1 ^ #minecraft:replaceable run fill ~ ~ ~ ~ ~-2 ~ air replace #replaceable
execute positioned ^-1 ^ ^ positioned over world_surface if block ^ ^-1 ^ #minecraft:replaceable run fill ~ ~ ~ ~ ~-2 ~ air replace #replaceable
execute positioned ^-2 ^ ^ positioned over world_surface if block ^ ^-1 ^ #minecraft:replaceable run fill ~ ~ ~ ~ ~-2 ~ air replace #replaceable

execute positioned ^-1 ^ ^00 positioned over world_surface if block ^ ^ ^ #j_data:can_build_on if block ^ ^-1 ^ #j_data:can_build_on run summon marker ^ ^-1 ^ {Tags:["j.construcao","j.place.path"]}
execute positioned ^00 ^ ^00 positioned over world_surface if block ^ ^ ^ #j_data:can_build_on if block ^ ^-1 ^ #j_data:can_build_on run summon marker ^ ^-1 ^ {Tags:["j.construcao","j.place.path"]}
execute positioned ^01 ^ ^00 positioned over world_surface if block ^ ^ ^ #j_data:can_build_on if block ^ ^-1 ^ #j_data:can_build_on run summon marker ^ ^-1 ^ {Tags:["j.construcao","j.place.path"]}


scoreboard players remove @s j.caminho 1
execute if score @s j.caminho matches ..0 positioned ^ ^ ^1 positioned over world_surface if block ^ ^-1 ^ #j_data:can_build_on run summon marker ^ ^-1 ^ {Tags:["j.criar_estrada"]}
execute if score @s j.caminho matches ..0 positioned ^ ^ ^1 positioned over world_surface if block ^ ^-1 ^ #j_data:can_build_on run rotate @n[tag=j.criar_estrada] ~ ~
execute if score @s j.caminho matches ..0 run return run scoreboard players set @s j.caminho 13

execute if score @s j.caminho matches 3 positioned ^02 ^ ^1 positioned over world_surface if block ^ ^-1 ^ #j_data:can_build_on run summon marker ^ ^-1 ^ {Tags:["j.lote","new","j.esquerda"]}
execute if score @s j.caminho matches 3 positioned ^-2 ^ ^1 positioned over world_surface if block ^ ^-1 ^ #j_data:can_build_on run summon marker ^ ^-1 ^ {Tags:["j.lote","new","j.direita"]}

execute if score @s j.caminho matches 7 positioned ^02 ^ ^1 positioned over world_surface if block ^ ^-1 ^ #j_data:can_build_on run summon marker ^ ^-1 ^ {Tags:["j.lote","new","j.esquerda"]}
execute if score @s j.caminho matches 7 positioned ^-2 ^ ^1 positioned over world_surface if block ^ ^-1 ^ #j_data:can_build_on run summon marker ^ ^-1 ^ {Tags:["j.lote","new","j.direita"]}

execute if score @s j.caminho matches 11 positioned ^02 ^ ^1 positioned over world_surface if block ^ ^-1 ^ #j_data:can_build_on run summon marker ^ ^-1 ^ {Tags:["j.lote","new","j.esquerda"]}
execute if score @s j.caminho matches 11 positioned ^-2 ^ ^1 positioned over world_surface if block ^ ^-1 ^ #j_data:can_build_on run summon marker ^ ^-1 ^ {Tags:["j.lote","new","j.direita"]}

rotate @n[tag=new,tag=j.esquerda] ~-90 0
rotate @n[tag=new,tag=j.direita] ~90 0

tag @e[tag=new] remove new

execute positioned over world_surface positioned ^ ^-1 ^1 run return run function j_villagers_update:fazer/marcar/estrada