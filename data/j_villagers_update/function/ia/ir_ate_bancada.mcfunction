$execute if entity @n[scores={j.ids=$(id_bloco)},distance=..10] run function j_ai:wander

$execute if score 20 j.ticks matches 1 unless entity @n[scores={j.ids=$(id_bloco)},distance=..10] run rotate @s facing entity @n[scores={j.ids=$(id_bloco)}] feet
$execute unless entity @n[scores={j.ids=$(id_bloco)},distance=..10] run function j_ai:move