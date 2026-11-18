execute positioned ^ ^ ^1 store result storage j:aux sucess int 1 run function j_villagers_update:fazer/marcar/scanear/macro {in:5}
execute if data storage j:aux {sucess:0} run return run kill @s

summon marker ~ ~ ~ {Tags:["j.construcao","j.place.path"]}

execute positioned ^ ^ ^1 run function j_villagers_update:fazer/marcar/casa

#execute as @e[sort=random,limit=1,tag=j.lote] at @s rotated as @s run function j_villagers_update:fazer/marcar/escolher_lote