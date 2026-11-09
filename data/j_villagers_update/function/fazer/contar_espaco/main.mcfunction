$execute unless entity @s[scores={j.blocks=1..}] align xyz positioned ~.5 ~1.5 ~.5 run return run function j_villagers_update:fazer/contar_espaco/positioned {id:$(id)}
$execute if score @s j.blocks matches 80.. run return run function j_villagers_update:fazer/contar_espaco/output {id:$(id)}

scoreboard players operation aux j.blocks = @s j.blocks

$execute as @e[tag=j.vilager_$(id),tag=plus_x,tag=!old] at @s run function j_villagers_update:fazer/contar_espaco/plus_x {id:$(id)}
$execute as @e[tag=j.vilager_$(id),tag=plus_z,tag=!old] at @s run function j_villagers_update:fazer/contar_espaco/plus_z {id:$(id)}
$execute as @e[tag=j.vilager_$(id),tag=minus_x,tag=!old] at @s run function j_villagers_update:fazer/contar_espaco/minus_x {id:$(id)}
$execute as @e[tag=j.vilager_$(id),tag=minus_z,tag=!old] at @s run function j_villagers_update:fazer/contar_espaco/minus_z {id:$(id)}

scoreboard players operation @s j.blocks = aux j.blocks

kill @e[tag=older]
tag @e[tag=old] add older


$execute unless entity @n[tag=j.vilager_$(id)] run scoreboard players set @s j.blocks 0
$execute unless entity @n[tag=j.vilager_$(id)] run return run function j_villagers_update:fazer/contar_espaco/output {id:$(id)}