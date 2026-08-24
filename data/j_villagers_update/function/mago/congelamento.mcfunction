scoreboard players set @s j.cooldown 3
function j_villagers_update:ia/swing
playsound block.glass.break neutral @a[distance=..20] ~ ~ ~ 1 1 1


execute as @e[predicate=j_villagers_update:inimigos/vilage,distance=..15] at @s run particle minecraft:snowflake ~ ~1 ~ 0 0 1 0.2 0 force
execute as @e[predicate=j_villagers_update:inimigos/vilage,distance=..15] at @s run particle minecraft:snowflake ~ ~1 ~ 0 1 0 0.2 0 force
execute as @e[predicate=j_villagers_update:inimigos/vilage,distance=..15] at @s run particle minecraft:snowflake ~ ~1 ~ 0 1 1 0.2 0 force
execute as @e[predicate=j_villagers_update:inimigos/vilage,distance=..15] at @s run particle minecraft:snowflake ~ ~1 ~ 1 0 0 0.2 0 force
execute as @e[predicate=j_villagers_update:inimigos/vilage,distance=..15] at @s run particle minecraft:snowflake ~ ~1 ~ 1 0 1 0.2 0 force
execute as @e[predicate=j_villagers_update:inimigos/vilage,distance=..15] at @s run particle minecraft:snowflake ~ ~1 ~ 1 1 0 0.2 0 force
execute as @e[predicate=j_villagers_update:inimigos/vilage,distance=..15] at @s run particle minecraft:snowflake ~ ~1 ~ 1 1 1 0.2 0 force

execute as @e[predicate=j_villagers_update:inimigos/vilage,distance=..15] at @s run particle minecraft:snowflake ~ ~1 ~ 00 00 -1 0.2 0 force
execute as @e[predicate=j_villagers_update:inimigos/vilage,distance=..15] at @s run particle minecraft:snowflake ~ ~1 ~ 00 -1 00 0.2 0 force
execute as @e[predicate=j_villagers_update:inimigos/vilage,distance=..15] at @s run particle minecraft:snowflake ~ ~1 ~ 00 -1 -1 0.2 0 force
execute as @e[predicate=j_villagers_update:inimigos/vilage,distance=..15] at @s run particle minecraft:snowflake ~ ~1 ~ -1 00 00 0.2 0 force
execute as @e[predicate=j_villagers_update:inimigos/vilage,distance=..15] at @s run particle minecraft:snowflake ~ ~1 ~ -1 00 -1 0.2 0 force
execute as @e[predicate=j_villagers_update:inimigos/vilage,distance=..15] at @s run particle minecraft:snowflake ~ ~1 ~ -1 -1 00 0.2 0 force
execute as @e[predicate=j_villagers_update:inimigos/vilage,distance=..15] at @s run particle minecraft:snowflake ~ ~1 ~ -1 -1 -1 0.2 0 force

execute as @e[predicate=j_villagers_update:inimigos/vilage,distance=..15] at @s run particle minecraft:snowflake ~ ~1 ~ 00 01 -1 0.2 0 force
execute as @e[predicate=j_villagers_update:inimigos/vilage,distance=..15] at @s run particle minecraft:snowflake ~ ~1 ~ 01 00 -1 0.2 0 force
execute as @e[predicate=j_villagers_update:inimigos/vilage,distance=..15] at @s run particle minecraft:snowflake ~ ~1 ~ -1 01 00 0.2 0 force
execute as @e[predicate=j_villagers_update:inimigos/vilage,distance=..15] at @s run particle minecraft:snowflake ~ ~1 ~ -1 01 -1 0.2 0 force

execute as @e[predicate=j_villagers_update:inimigos/vilage,distance=..15] at @s run particle minecraft:snowflake ~ ~1 ~ 00 -1 01 0.2 0 force
execute as @e[predicate=j_villagers_update:inimigos/vilage,distance=..15] at @s run particle minecraft:snowflake ~ ~1 ~ -1 00 01 0.2 0 force
execute as @e[predicate=j_villagers_update:inimigos/vilage,distance=..15] at @s run particle minecraft:snowflake ~ ~1 ~ 01 -1 00 0.2 0 force
execute as @e[predicate=j_villagers_update:inimigos/vilage,distance=..15] at @s run particle minecraft:snowflake ~ ~1 ~ -1 -1 01 0.2 0 force

particle minecraft:snowflake ~ ~ ~ -1 06 01 0.1 0 force
particle minecraft:snowflake ~ ~ ~ 01 06 01 0.1 0 force
particle minecraft:snowflake ~ ~ ~ 01 06 -1 0.1 0 force
particle minecraft:snowflake ~ ~ ~ -1 06 -1 0.1 0 force

particle minecraft:snowflake ~ ~ ~ 00 06 01 0.1 0 force
particle minecraft:snowflake ~ ~ ~ 00 06 -1 0.1 0 force
particle minecraft:snowflake ~ ~ ~ 01 06 00 0.1 0 force
particle minecraft:snowflake ~ ~ ~ -1 06 00 0.1 0 force

execute as @e[predicate=j_villagers_update:inimigos/vilage,distance=..15] at @s run effect give @s slowness 15 3 true
execute as @e[predicate=j_villagers_update:inimigos/vilage,distance=..15] at @s run effect give @s weakness 15 3 true
execute as @e[predicate=j_villagers_update:inimigos/vilage,distance=..15] at @s run data modify entity @s TicksFrozen set value 140
