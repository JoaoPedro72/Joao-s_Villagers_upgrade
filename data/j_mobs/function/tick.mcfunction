function j_mobs:tp_skins
execute if entity @n[tag=!custom,type=#j_data:need_id,tag=!j.has_id] run function j_mobs:dar_id
execute as @e[tag=!j.has_tags] at @s run function #j_mobs:on_tick
