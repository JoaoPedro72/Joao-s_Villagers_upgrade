schedule function j_ai:hurt 20t replace

execute as @e store result score @s j_vida_atual run data get entity @s Health
execute as @e store result score @s j_vida_maxima run attribute @s max_health get

execute as @e if score @s j_vida_atual < @s j_vida_maxima run tag @s add hurt
execute as @e unless score @s j_vida_atual < @s j_vida_maxima run tag @s remove hurt
