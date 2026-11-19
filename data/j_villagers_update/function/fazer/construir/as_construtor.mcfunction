#execute as @e[tag=j.construcao,tag=!j.placed,sort=random,limit=1] at @s run function j_villagers_update:fazer/construir/place
#say oi

execute as @n[tag=j.construcao,distance=1..] at @s run function j_villagers_update:fazer/construir/place

