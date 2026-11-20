execute store result score villagers j.num if entity @e[type=villager,distance=..100]
execute store result score casas j.num if entity @e[tag=j.casa,distance=..100]

execute if score casas j.num >= villagers j.num run return fail

execute positioned ~ ~ ~ store result storage j:aux sucess int 1 run function j_villagers_update:fazer/marcar/scanear/macro {in:6}
execute if data storage j:aux {sucess:0} run return fail

summon marker ~ ~ ~ {Tags:["j.construcao","j.place.path"]}

execute positioned ^ ^ ^1 run function j_villagers_update:fazer/marcar/casa

kill @s
return 1
#execute as @e[sort=random,limit=1,tag=j.lote] at @s rotated as @s run function j_villagers_update:fazer/marcar/escolher_lote