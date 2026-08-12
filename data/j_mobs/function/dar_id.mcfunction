execute as @n[tag=!custom,type=#j_data:need_id,tag=!has_id] unless score @s j.ids >= 0 j.num run scoreboard players add $global j.ids 1
execute as @n[tag=!custom,type=#j_data:need_id,tag=!has_id] unless score @s j.ids >= 0 j.num run scoreboard players operation @s j.ids = $global j.ids
execute as @n[tag=!custom,type=#j_data:need_id,tag=!has_id] run tag @s add has_id
