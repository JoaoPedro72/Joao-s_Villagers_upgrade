kill @e[tag=j_path_used,tag=!j_path]

summon marker ^ ^ ^-1.5 {Tags:["j_path","j_path_used"]}

execute store result score @s j.alvo.x run data get entity @n[distance=..2,tag=j_path] Pos[0] 100
execute store result score @s j.alvo.y run data get entity @n[distance=..2,tag=j_path] Pos[1] 100
execute store result score @s j.alvo.z run data get entity @n[distance=..2,tag=j_path] Pos[2] 100

execute store result score @s j.pos.x run data get entity @s Pos[0] 100
execute store result score @s j.pos.y run data get entity @s Pos[1] 100
execute store result score @s j.pos.z run data get entity @s Pos[2] 100

scoreboard players operation @s j.alvo.x -= @s j.pos.x
scoreboard players operation @s j.alvo.y -= @s j.pos.y
scoreboard players operation @s j.alvo.z -= @s j.pos.z

scoreboard players operation @s j.alvo.x *= @s j.mob.speed
scoreboard players operation @s j.alvo.z *= @s j.mob.speed

execute store result entity @s Motion[0] double 0.00004 run scoreboard players get @s j.alvo.x
execute store result entity @s Motion[2] double 0.00004 run scoreboard players get @s j.alvo.z

tag @e[tag=j_path] remove j_path
kill @e[tag=j_path_used,tag=!j_path]
