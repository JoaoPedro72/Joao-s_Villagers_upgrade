playsound block.wood.place neutral @a[distance=..10]

execute if entity @s[tag=j.place.log] run fill ~ ~ ~ ~ ~ ~ oak_log
execute if entity @s[tag=j.place.plank] run fill ~ ~ ~ ~ ~ ~ oak_planks
execute if entity @s[tag=j.place.cobble] run fill ~ ~ ~ ~ ~ ~ cobblestone
execute if entity @s[tag=j.place.air] run fill ~ ~ ~ ~ ~ ~ air

execute if entity @s[tag=j.place.door] run fill ~ ~ ~ ~ ~ ~ oak_door[half=lower]
execute if entity @s[tag=j.place.door] run fill ~ ~1 ~ ~ ~1 ~ oak_door[half=upper]

execute if entity @s[tag=j.place.lanter] run fill ~ ~ ~ ~ ~ ~ lantern[hanging=true]
execute if entity @s[tag=j.place.path] run fill ~ ~ ~ ~ ~ ~ dirt_path


execute if entity @s[tag=j.place.bed.head] positioned ~ ~ ~1 if entity @n[distance=..1, tag=j.place.bed] at @s run fill ~ ~ ~ ~ ~ ~ red_bed[part=head,facing=north]
execute if entity @s[tag=j.place.bed.head] positioned ~ ~ ~1 if entity @n[distance=..1, tag=j.place.bed] run fill ~ ~ ~ ~ ~ ~ red_bed[part=foot,facing=north]

execute if entity @s[tag=j.place.bed.head] positioned ~ ~ ~-1 if entity @n[distance=..1, tag=j.place.bed] at @s run fill ~ ~ ~ ~ ~ ~ red_bed[part=head,facing=south]
execute if entity @s[tag=j.place.bed.head] positioned ~ ~ ~-1 if entity @n[distance=..1, tag=j.place.bed] run fill ~ ~ ~ ~ ~ ~ red_bed[part=foot,facing=south]

execute if entity @s[tag=j.place.bed.head] positioned ~1 ~ ~ if entity @n[distance=..1, tag=j.place.bed] at @s run fill ~ ~ ~ ~ ~ ~ red_bed[part=head,facing=west]
execute if entity @s[tag=j.place.bed.head] positioned ~1 ~ ~ if entity @n[distance=..1, tag=j.place.bed] run fill ~ ~ ~ ~ ~ ~ red_bed[part=foot,facing=west]

execute if entity @s[tag=j.place.bed.head] positioned ~-1 ~ ~ if entity @n[distance=..1, tag=j.place.bed] at @s run fill ~ ~ ~ ~ ~ ~ red_bed[part=head,facing=east]
execute if entity @s[tag=j.place.bed.head] positioned ~-1 ~ ~ if entity @n[distance=..1, tag=j.place.bed] run fill ~ ~ ~ ~ ~ ~ red_bed[part=foot,facing=east]

execute if entity @s[tag=j.place.bed.head] run kill @n[tag=j.construcao.post]

execute unless entity @s[tag=j.place.bancada] run return run kill @s

execute store result storage j:aux bancada int 1 run random value 0..11

execute if data storage j:aux {bancada:0} run fill ~ ~ ~ ~ ~ ~ stonecutter
execute if data storage j:aux {bancada:1} run fill ~ ~ ~ ~ ~ ~ cartography_table
execute if data storage j:aux {bancada:2} run fill ~ ~ ~ ~ ~ ~ fletching_table
execute if data storage j:aux {bancada:3} run fill ~ ~ ~ ~ ~ ~ smithing_table
execute if data storage j:aux {bancada:4} run fill ~ ~ ~ ~ ~ ~ grindstone
execute if data storage j:aux {bancada:5} run fill ~ ~ ~ ~ ~ ~ loom
execute if data storage j:aux {bancada:6} run fill ~ ~ ~ ~ ~ ~ smoker
execute if data storage j:aux {bancada:7} run fill ~ ~ ~ ~ ~ ~ blast_furnace
execute if data storage j:aux {bancada:8} run fill ~ ~ ~ ~ ~ ~ brewing_stand
execute if data storage j:aux {bancada:9} run fill ~ ~ ~ ~ ~ ~ cauldron
execute if data storage j:aux {bancada:10} run fill ~ ~ ~ ~ ~ ~ barrel

data remove storage j:aux bancada

kill @s
