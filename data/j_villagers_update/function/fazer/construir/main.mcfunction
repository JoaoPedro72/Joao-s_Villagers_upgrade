
effect give @s slowness 2 3 true
scoreboard players set @s j.mob.speed 25

execute unless block ~ ~ ~ #air run function j_ai:move
execute if entity @n[tag=j.construcao,distance=..1] run function j_ai:move
#say indo
execute if score @s j.cooldown_virar matches 0 run rotate @s facing entity @n[tag=j.construcao] feet
execute unless entity @n[tag=j.construcao,distance=..2] run function j_ai:move
execute unless entity @n[tag=j.construcao,distance=..8] run return 0


#say construir
#data merge entity @s {NoAI:1b}

effect give @s slowness 1 255 true
#data merge entity @s {Motion:[0.0,0.0,0.0]}

execute unless score 10 j.ticks matches 2 run return fail

execute as @n[tag=j.construcao,distance=1..] at @s run function j_villagers_update:fazer/construir/place
function j_villagers_update:ia/swing

#execute unless entity @n[tag=j.construcao,distance=..50] run data merge entity @s {NoAI:0b}