#Vilage lutador AI

$execute unless entity @e[tag=$(id).target] run return fail

$execute if score 20 j.ticks matches 1 run rotate @s facing entity @n[tag=$(id).target] feet

$execute unless entity @n[tag=$(id).target,distance=..10] run function j_ai:move