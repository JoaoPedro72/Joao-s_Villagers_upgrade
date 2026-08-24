
$execute if entity @s[tag=tem_alvo] unless entity @n[tag=$(id).target] run scoreboard players add @s j.kills 1
$execute if entity @s[tag=tem_alvo] unless entity @n[tag=$(id).target] run tag @s remove tem_alvo

$execute unless entity @n[tag=$(id).target] unless entity @n[predicate=j_villagers_update:inimigos/vilage,distance=..15] run scoreboard players set @s j.cooldown 3
$execute unless entity @n[tag=$(id).target] unless entity @n[predicate=j_villagers_update:inimigos/vilage,distance=..15] run return fail

tag @s add tem_alvo

rotate @s facing entity @n[predicate=j_villagers_update:inimigos/vilage] feet

execute if entity @n[predicate=j_villagers_update:inimigos/vilage,distance=..10] if score @s j.cooldown matches 0 if predicate {condition:"minecraft:random_chance",chance:0.2} run function j_villagers_update:mago/congelamento
execute if entity @n[predicate=j_villagers_update:inimigos/vilage,distance=..10] if score @s j.cooldown matches 0 run function j_villagers_update:mago/magia

execute if score @s j_vida_atual <= 10 j.num run rotate @s ~180 ~


execute unless entity @n[predicate=j_villagers_update:inimigos/vilage,distance=..10] run function j_ai:move
execute if entity @n[predicate=j_villagers_update:inimigos/vilage,distance=..8] run function j_ai:esquiva
