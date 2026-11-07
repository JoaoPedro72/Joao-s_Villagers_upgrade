execute unless block ~ ~ ~ #j_data:atravessavel run return fail
execute unless block ~ ~-1 ~ #j_data:atravessavel run return fail
execute if block ~ ~-2 ~ #j_data:atravessavel run return fail

scoreboard players add @s j.blocks 2
return 1