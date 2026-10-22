schedule function j_villagers_update:tick 1t append

execute if score 40 j.ticks matches 1 as @e[type=villager,tag=!j.possui_profissao] unless data entity @s VillagerData{profession:"minecraft:none"} run function j_villagers_update:dar_tags_profissoes
execute if score 40 j.ticks matches 1 as @e[type=villager,tag=j.possui_profissao] if data entity @s VillagerData{profession:"minecraft:none"} run function j_villagers_update:tirar_tags_profissoes

execute as @e[tag=vilage,type=zombie_villager] run function j_villagers_update:zombie_villager
execute as @e[tag=undead,type=villager] run function j_villagers_update:dar_tags

execute as @e[type=villager,tag=!AI] run tag @s add AI

execute as @e[tag=AI_guarda] at @s run function j_villagers_update:guarda/tick
execute as @e[tag=AI_arqueiro] at @s run function j_villagers_update:arqueiro/tick
execute as @e[tag=AI_mago] at @s run function j_villagers_update:mago/tick

execute if score 20 j.ticks matches 10 as @e[type=villager] at @s run function j_villagers_update:ia/iluminar

execute as @e[type=marker,tag=bola_de_fogo_mago] at @s run function j_villagers_update:mago/magia_mover

function j_villagers_update:spawnar_guardas
execute if score 20 j.ticks matches 16 run function j_villagers_update:bancadas/invocar_e_remover

execute as @e[tag=undead] at @s run data modify entity @s last_hurt_by_mob set from entity @n[predicate=j_villagers_update:inimigos/undead, distance=..15, type=!witch] UUID
execute as @e[tag=illager] at @s run data modify entity @s last_hurt_by_mob set from entity @n[predicate=j_villagers_update:inimigos/illager, distance=..15] UUID

function j_villagers_update:bancadas/tick

execute if score 20 j.ticks matches 10 as @e[type=villager,tag=j.fazendeiro] at @s run function j_villagers_update:fazendeiro/20tick

# LENHADOR
execute as @e[tag=j.lenhador] at @s run function j_villagers_update:profissoes/lenhador


execute unless predicate j_villagers_update:gather_time run return fail
# clerico
execute as @e[tag=j.clerico] at @s run function j_villagers_update:clerico/tick
# ferreiros
execute as @e[tag=j.ferreiro] at @s run function j_villagers_update:ferreiro/tick
# bibliotecario
execute if score 40 j.ticks matches 30 as @e[tag=j.bibliotecario] at @s run function j_villagers_update:bibliotecario/tick
# açougueiro
execute as @e[tag=j.acougueiro] at @s run function j_villagers_update:profissoes/acougueiro
# coureiro
execute as @e[tag=j.coureiro] at @s run function j_villagers_update:profissoes/coureiro
# pastor
execute as @e[tag=j.pastor] at @s run function j_villagers_update:profissoes/pastor
# fazendeiro
execute as @e[tag=j.fazendeiro] at @s run function j_villagers_update:fazendeiro/tick


