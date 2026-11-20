execute positioned ^ ^ ^1 store result storage j:aux sucess int 1 run function j_villagers_update:fazer/marcar/scanear/macro {in:4}
execute if data storage j:aux {sucess:0} run return run kill @s

function j_villagers_update:fazer/marcar/casa_upgrade
kill @s

#execute as @e[sort=random,tag=j.pode_crescer,limit=1,distance=..50] at @s rotated ~ ~ run function j_villagers_update:fazer/marcar/aumentar_casa