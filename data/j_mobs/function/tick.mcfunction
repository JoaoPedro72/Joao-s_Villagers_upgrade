function j_mobs:tp_skins
execute if entity @n[tag=!custom,type=#j_data:need_id,tag=!has_id] run function j_mobs:dar_id
execute as @e[tag=!taged] at @s run function #j_mobs:on_tick
