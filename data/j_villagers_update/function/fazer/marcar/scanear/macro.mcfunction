$scoreboard players set aux j.num $(in)
$data modify storage j:aux conta.in set value $(in)

scoreboard players set 2 j.num 2

scoreboard players operation aux2 j.num = aux j.num 
scoreboard players operation aux2 j.num %= 2 j.num 

scoreboard players set -10 j.num -10
scoreboard players set j.desloca j.num 10
execute if score aux2 j.num matches 0 run scoreboard players set j.desloca j.num 15

scoreboard players operation aux j.num *= -10 j.num
scoreboard players operation aux j.num /= 2 j.num


execute store result storage j:aux conta.out float 0.1 run scoreboard players operation aux j.num += j.desloca j.num

return run function j_villagers_update:fazer/marcar/scanear/area with storage j:aux conta