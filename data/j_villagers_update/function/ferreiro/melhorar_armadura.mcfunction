execute as @n[tag=j.pode_melhorar_armadura,distance=..15] if score @s j.nivel_armadura matches 2 run function j_villagers_update:ferreiro/arma_up_macro {nivel:diamond,dano:7}

execute as @n[tag=j.pode_melhorar_armadura,distance=..15] if score @s j.nivel_armadura matches 1 run function j_villagers_update:ferreiro/arma_up_macro {nivel:iron,dano:6}

execute as @n[tag=j.pode_melhorar_armadura,distance=..15] if score @s j.nivel_armadura matches 0 run function j_villagers_update:ferreiro/arma_up_macro {nivel:golden,dano:5}

execute as @n[tag=j.pode_melhorar_armadura,distance=..15] unless score @s j.nivel_armadura matches 0.. run function j_villagers_update:ferreiro/melhora_couro

scoreboard players add @s j.cooldown 60