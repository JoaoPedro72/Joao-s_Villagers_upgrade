data modify storage velocidade velocidade set value [0.0d,0.0d,0.0d]

execute as @s store result storage velocidade velocidade[0] double 0.15 run scoreboard players get @s j.pos.x
execute as @s store result storage velocidade velocidade[1] double 0.15 run scoreboard players get @s j.pos.y
execute as @s store result storage velocidade velocidade[2] double 0.15 run scoreboard players get @s j.pos.z

data modify entity @s Motion set from storage velocidade velocidade
