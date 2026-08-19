# 0,5 seg
scoreboard players add 10 j.ticks 1
# 1 seg
scoreboard players add 20 j.ticks 1
# 2 seg
scoreboard players add 40 j.ticks 1
# 5 seg
scoreboard players add 100 j.ticks 1
# 15 seg
scoreboard players add 300 j.ticks 1
# 600 seg - 10 min
scoreboard players add 12000 j.ticks 1

execute if score 10 j.ticks matches 10 run scoreboard players set 10 j.ticks 0
execute if score 20 j.ticks matches 20 run scoreboard players set 20 j.ticks 0
execute if score 40 j.ticks matches 40 run scoreboard players set 40 j.ticks 0
execute if score 100 j.ticks matches 100 run scoreboard players set 100 j.ticks 0
execute if score 300 j.ticks matches 300 run scoreboard players set 300 j.ticks 0
execute if score 12000 j.ticks matches 12000 run scoreboard players set 12000 j.ticks 0