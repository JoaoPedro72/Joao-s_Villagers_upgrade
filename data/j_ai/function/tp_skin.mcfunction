execute as @s[tag=skin] store result storage j:raycast id int 1 run scoreboard players get @s ids
execute as @s[tag=skin] run function j_ai:tp_to_id with storage j:raycast