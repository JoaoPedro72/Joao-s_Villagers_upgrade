execute if score @s j.cooldown_3 <= 0 j.num if predicate j_villagers_update:escuro run fill ~ ~ ~ ~ ~ ~ torch replace #replaceable
execute if score @s j.cooldown_3 <= 0 j.num if predicate j_villagers_update:escuro run scoreboard players set @s j.cooldown_3 10

execute unless score @s j.cooldown_3 <= 0 j.num run scoreboard players remove @s j.cooldown_3 1
