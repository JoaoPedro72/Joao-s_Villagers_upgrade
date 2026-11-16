#effect give @s slowness 1 255 true

execute if score @s j.cooldown_virar matches 0 run rotate @s facing entity @n[tag=j.centro_construcao,tag=!j.placed] feet
execute unless entity @n[tag=j.centro_construcao,distance=..2.5] run return run function j_ai:move


effect give @s slowness 2 255 true
playsound block.wood.place neutral @a[distance=..10]
function j_villagers_update:fazer/construir/as_construtor
function j_villagers_update:ia/swing

scoreboard players set @s j.cooldown 1
