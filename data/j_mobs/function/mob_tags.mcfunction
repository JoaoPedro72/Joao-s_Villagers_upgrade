execute as @s[tag=!custom,tag=!sized,type=#j_data:need_id] unless score @s j.ids >= 0 j.num unless score @s j.ids <= 0 j.num run scoreboard players add $global j.ids 1
execute as @s[tag=!custom,tag=!sized,type=#j_data:need_id] unless score @s j.ids >= 0 j.num unless score @s j.ids <= 0 j.num run scoreboard players operation @s j.ids = $global j.ids

#domesticaveis

execute as @s[tag=!custom,type=minecraft:wolf] run tag @s add tameable
execute as @s[tag=!custom,type=minecraft:cat] run tag @s add tameable

#passive Neutral Mobs

execute as @s[tag=!custom,type=#j_mobs:passive] run tag @s add passive

#aquatic mobs

execute as @s[tag=!custom,type=minecraft:squid] run tag @s add aquatic
execute as @s[tag=!custom,type=minecraft:glow_squid] run tag @s add aquatic
execute as @s[tag=!custom,type=minecraft:cod] run tag @s add aquatic
execute as @s[tag=!custom,type=minecraft:salmon] run tag @s add aquatic
execute as @s[tag=!custom,type=minecraft:tropical_fish] run tag @s add aquatic
execute as @s[tag=!custom,type=minecraft:pufferfish] run tag @s add aquatic

#villager faction

execute as @s[tag=!custom,type=#j_mobs:vilage] run tag @s add vilage
execute as @s[tag=!custom,type=minecraft:villager] run tag @s add AI

execute as @s[tag=!custom,type=#j_mobs:golem] run tag @s add golen

#illager faction

execute as @s[tag=!custom,type=#j_mobs:illager] run tag @s add illager

#undead faction

execute as @s[tag=!custom,type=#j_mobs:undead] run tag @s add undead

#nether faction

execute as @s[tag=!custom,type=minecraft:zombified_piglin] run tag @s add nether
execute as @s[tag=!custom,type=minecraft:wither_skeleton] run tag @s add nether
execute as @s[tag=!custom,type=minecraft:zoglin] run tag @s add nether

execute as @s[tag=!custom,type=minecraft:hoglin] run tag @s add nether
execute as @s[tag=!custom,type=minecraft:piglin] run tag @s add nether
execute as @s[tag=!custom,type=minecraft:piglin_brute] run tag @s add nether
execute as @s[tag=!custom,type=minecraft:blaze] run tag @s add nether
execute as @s[tag=!custom,type=minecraft:ghast] run tag @s add nether
execute as @s[tag=!custom,type=minecraft:magma_cube] run tag @s add nether

#piglin faction

execute as @s[tag=!custom,type=minecraft:piglin] run tag @s add piglin
execute as @s[tag=!custom,type=minecraft:piglin_brute] run tag @s add piglin

#theEnd faction

execute as @s[tag=!custom,type=minecraft:enderman] run tag @s add theEnd
execute as @s[tag=!custom,type=minecraft:endermite] run tag @s add theEnd
execute as @s[tag=!custom,type=minecraft:shulker] run tag @s add theEnd

#sculk faction

execute as @s[tag=!custom,type=minecraft:warden] run tag @s add sculk

#guardian
execute as @s[tag=!custom,type=minecraft:guardian] run tag @s add guardian
execute as @s[tag=!custom,type=minecraft:elder_guardian] run tag @s add guardian

#allies mobs

execute as @s[tag=vilage, tag=!player_ally] run tag @s add player_ally
execute as @a[tag=!player_ally] run tag @s add player_ally
execute as @s[tag=player_summon, tag=!player_ally] run tag @s add player_ally
execute as @s[tag=tameable, tag=!player_ally] run tag @s add player_ally

#agressive mobs

execute as @s[tag=!custom,type=minecraft:creeper] run tag @s add agressive
execute as @s[tag=!custom,type=minecraft:spider] run tag @s add agressive
execute as @s[tag=!custom,type=minecraft:cave_spider] run tag @s add agressive
execute as @s[tag=!custom,type=minecraft:slime] run tag @s add agressive
execute as @s[tag=!custom,type=minecraft:silverfish] run tag @s add agressive
execute as @s[tag=!custom,type=minecraft:breeze] run tag @s add agressive

execute as @s[tag=illager] run tag @s add agressive
execute as @s[tag=undead, type=!zombie_horse, type=!skeleton_horse] run tag @s add agressive
execute as @s[tag=nether] run tag @s add agressive
execute as @s[tag=theEnd] run tag @s add agressive
execute as @s[tag=sculk] run tag @s add agressive
execute as @s[tag=guardian] run tag @s add agressive

# enemy factions

# Illagers
execute as @s[predicate=j_villagers_update:inimigos/illager] run tag @s add illager_enemy

execute as @s[tag=!illager,tag=vilage] run tag @s add illager_enemy
execute as @s[tag=!illager,tag=undead] run tag @s add illager_enemy
execute as @s[tag=!illager,tag=piglin] run tag @s add illager_enemy
execute as @s[tag=!illager,tag=theEnd] run tag @s add illager_enemy
execute as @s[tag=!illager,tag=sculk] run tag @s add illager_enemy
execute as @s[tag=!illager,tag=guardian] run tag @s add illager_enemy

# Undeads
execute as @s[tag=!undead,tag=vilage] run tag @s add undead_enemy
execute as @s[tag=!undead,tag=illager,type=!witch] run tag @s add undead_enemy
execute as @s[tag=!undead,tag=piglin] run tag @s add undead_enemy
execute as @s[tag=!undead,tag=sculk] run tag @s add undead_enemy
execute as @s[tag=!undead,tag=guardian] run tag @s add undead_enemy

# piglins
execute as @s[tag=!piglin,tag=vilage] run tag @s add piglin_enemy
execute as @s[tag=!piglin,tag=illager] run tag @s add piglin_enemy
execute as @s[tag=!piglin,tag=undead] run tag @s add piglin_enemy
execute as @s[tag=!piglin,tag=sculk] run tag @s add piglin_enemy
execute as @s[tag=!piglin,tag=guardian] run tag @s add piglin_enemy





tag @s add j.has_tags