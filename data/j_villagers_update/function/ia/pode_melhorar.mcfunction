scoreboard objectives add j.nivel_armadura dummy

execute if score @s j.nivel_armadura matches ..2 if score @s j.kills matches 30.. run tag @s add j.pode_melhorar_armadura

execute if score @s j.nivel_armadura matches ..1 if score @s j.kills matches 20..29 run tag @s add j.pode_melhorar_armadura

execute if score @s j.nivel_armadura matches 0 if score @s j.kills matches 10..19 run tag @s add j.pode_melhorar_armadura
