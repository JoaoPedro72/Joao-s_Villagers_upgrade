execute unless block ~ ~ ~ #replaceable run loot spawn ~ ~ ~ loot j_villagers_update:bancada_mago
execute unless block ~ ~ ~ #replaceable run return run kill @s

summon minecraft:item_display ~.5 ~.5 ~.5 {CustomName:[{text:Bancada_Mago}],Tags:["j.bloco","j.bloco.mago"],item:{id:"minecraft:crafting_table",components:{item_model:"j_items:bancada/mago"}}}
summon minecraft:interaction ~.5 ~ ~.5 {Tags:["j.bloco.hitbox"],height:1.01f,width:1.01f}
fill ~ ~ ~ ~ ~ ~ barrier replace #replaceable

execute as @n[tag=j.bloco] run function j_mobs:me_dar_id

kill @s
