execute store result storage j:aux construcao int 1 run random value 0..2
execute unless data storage j:aux {construcao:0} run return fail

execute positioned ~ ~ ~ store result storage j:aux sucess int 1 run function j_villagers_update:fazer/marcar/scanear/macro {in:9}
execute if data storage j:aux {sucess:0} run return fail

summon marker ~ ~ ~ {Tags:["j.construcao","j.place.path"]}

execute positioned ^ ^ ^1 run function j_villagers_update:fazer/marcar/fazenda

kill @s
return 1
#execute as @e[sort=random,limit=1,tag=j.lote] at @s rotated as @s run function j_villagers_update:fazer/marcar/escolher_lote