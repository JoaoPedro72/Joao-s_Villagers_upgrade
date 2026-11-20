tag @s remove perdido

execute if entity @n[tag=agressive,distance=..15] run return fail
execute unless score @s j.cooldown matches 0 run return fail

execute if entity @n[tag=j.construcao,distance=..50] run return run function j_villagers_update:fazer/construir/main



execute unless entity @n[tag=j.construcao,distance=..50] run execute as @e[sort=random,tag=j.pode_crescer,limit=1,distance=..50] at @s rotated ~ ~ run function j_villagers_update:fazer/marcar/aumentar_casa
execute unless entity @n[tag=j.construcao,distance=..50] run execute as @e[sort=random,limit=1,tag=j.lote] at @s rotated as @s align xyz positioned ~.5 ~.5 ~.5 run function j_villagers_update:fazer/marcar/escolher_lote


execute unless entity @n[tag=j.construcao,distance=..50] run execute at @n[tag=j.criar_estrada] rotated as @n[tag=j.criar_estrada] align xyz positioned ~.5 ~.5 ~.5 run function j_villagers_update:fazer/marcar/estrada

scoreboard players set @s j.cooldown 5