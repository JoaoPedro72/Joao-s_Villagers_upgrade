execute as @s[tag=!has_id] unless score @s j.ids >= 0 j.num run scoreboard players add $global j.ids 1
execute as @s[tag=!has_id] unless score @s j.ids >= 0 j.num run scoreboard players operation @s j.ids = $global j.ids
execute as @s[tag=!has_id] run tag @s add has_id
