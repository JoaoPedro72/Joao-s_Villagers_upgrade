
execute as @n[tag=j.criar_bancada_guarda] at @s align xyz run summon minecraft:item_display ~.5 ~.5 ~.5 {CustomName:[{text:Bancada_Guarda}],Tags:["j.bloco","j.bloco.guarda"],item:{id:"minecraft:crafting_table",Count:1b,components:{item_model:"j_items:bancada/guarda"}}}
execute as @n[tag=j.criar_bancada_guarda] at @s align xyz run summon minecraft:interaction ~.5 ~ ~.5 {Tags:["j.bloco.hitbox"]}
execute as @n[tag=j.criar_bancada_guarda] at @s align xyz as @n[tag=j.bloco] run function j_mobs:me_dar_id
execute as @n[tag=j.criar_bancada_guarda] run kill @s

execute as @e[tag=j.bloco.hitbox] at @s on attacker run kill @n[tag=j.bloco.hitbox]

execute as @e[tag=j.bloco.hitbox] at @s unless entity @n[distance=..1,tag=j.bloco] run kill @s


execute as @e[tag=j.bloco.guarda] at @s unless entity @n[distance=..1,tag=j.bloco.hitbox] run loot spawn ~ ~ ~ loot j_villagers_update:bancada_guarda

execute as @e[tag=j.bloco] at @s unless entity @n[distance=..1,tag=j.bloco.hitbox] run kill

