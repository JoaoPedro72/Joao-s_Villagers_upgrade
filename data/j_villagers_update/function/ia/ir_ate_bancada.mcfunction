$execute if entity @n[scores={j.ids=$(id_bloco)},distance=..6] run function j_ai:wander

$execute if score 20 j.ticks matches 1 unless entity @n[scores={j.ids=$(id_bloco)},distance=..6] run rotate @s facing entity @n[scores={j.ids=$(id_bloco)}] feet
$execute unless entity @n[scores={j.ids=$(id_bloco)},distance=..6] run function j_ai:move


$execute if score 20 j.ticks matches 1 if entity @n[scores={j.ids=$(id_bloco)},distance=..6] run scoreboard players set @s j.cooldown_3 10
$execute if score 20 j.ticks matches 1 unless entity @n[scores={j.ids=$(id_bloco)},distance=..6] run scoreboard players remove @s j.cooldown_3 1
$execute if score 20 j.ticks matches 1 unless score @s j.cooldown_3 > 0 j.num run tp @s @n[scores={j.ids=$(id_bloco)}]