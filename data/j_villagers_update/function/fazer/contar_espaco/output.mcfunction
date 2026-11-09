scoreboard players set @s j.cooldown_contar_espaco 180
$kill @e[tag=j.vilager_$(id)]

execute if score @s j.blocks matches ..16 run data modify entity @s data.vilager_happiness merge value {space:-4}
execute if score @s j.blocks matches 16..24 run data modify entity @s data.vilager_happiness merge value {space:0}
execute if score @s j.blocks matches 24.. run data modify entity @s data.vilager_happiness merge value {space:5}

return run scoreboard players get @s j.blocks