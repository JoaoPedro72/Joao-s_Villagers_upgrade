execute as @n[tag=!custom,type=#j_data:need_id,tag=!has_id] unless score @s ids >= zero numero run scoreboard players add $global ids 1
execute as @n[tag=!custom,type=#j_data:need_id,tag=!has_id] unless score @s ids >= zero numero run scoreboard players operation @s ids = $global ids
execute as @n[tag=!custom,type=#j_data:need_id,tag=!has_id] store result storage j:raycast id int 1 run scoreboard players get @s ids
execute as @n[tag=!custom,type=#j_data:need_id,tag=!has_id] run function j_mobs:tag_id with storage j:raycast
execute as @n[tag=!custom,type=#j_data:need_id,tag=!has_id] run tag @s add has_id
