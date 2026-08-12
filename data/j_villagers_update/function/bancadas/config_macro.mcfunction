data merge storage j:bloco {UUID:[I;0,0,0,0]}

data merge storage j:bloco {PosX:0}
data merge storage j:bloco {PosY:0}
data merge storage j:bloco {PosZ:0}

execute store result storage j:bloco UUID[0] int 1 run scoreboard players get @s j.UUID.0
execute store result storage j:bloco UUID[1] int 1 run scoreboard players get @s j.UUID.1
execute store result storage j:bloco UUID[2] int 1 run scoreboard players get @s j.UUID.2
execute store result storage j:bloco UUID[3] int 1 run scoreboard players get @s j.UUID.3

execute store result storage j:bloco PosX int 1 run scoreboard players get @s j.mesa.x
execute store result storage j:bloco PosY int 1 run scoreboard players get @s j.mesa.y
execute store result storage j:bloco PosZ int 1 run scoreboard players get @s j.mesa.z

execute store result storage j:bloco id int 1 run scoreboard players get @s j.ids
