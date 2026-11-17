data merge entity @s {NoAI:0b}

effect give @s slowness 2 3 true
scoreboard players set @s j.mob.speed 25

execute unless block ~ ~ ~ #air run function j_ai:move
execute if entity @n[tag=j.construcao,distance=..1] run function j_ai:move

execute if score @s j.cooldown_virar matches 0 run rotate @s facing entity @n[tag=j.construcao,tag=!j.placed] feet
execute unless entity @n[tag=j.centro_construcao,distance=..2.5] unless entity @n[tag=j.construcao,distance=1..1.5] run return run function j_ai:move

#data merge entity @s {NoAI:1b}

effect give @s slowness 1 255 true
data merge entity @s {Motion:[0.0,0.0,0.0]}


function j_villagers_update:fazer/construir/as_construtor
function j_villagers_update:ia/swing

scoreboard players set @s j.cooldown 1

#execute unless entity @n[tag=j.construcao,distance=..50] run data merge entity @s {NoAI:0b}