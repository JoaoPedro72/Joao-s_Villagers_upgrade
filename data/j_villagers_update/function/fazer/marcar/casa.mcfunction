#execute positioned over world_surface align xyz positioned ~.5 ~-.5 ~.5 rotated ~ 0 run function j_villagers_update:fazer/marcar/casa

execute positioned ^00 ^ ^ if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.casa","j.centro_construcao"]}
rotate @n[tag=j.casa] ~ 0

execute positioned ^02 ^ ^2 if block ~ ~ ~ #j_data:can_build_on unless entity @n[tag=j.pode_crescer,distance=..1] run summon marker ~ ~ ~ {Tags:["j.pode_crescer","new","j.esquerda"]}
rotate @n[tag=new,tag=j.esquerda] ~90 0
execute positioned ^00 ^ ^4 if block ~ ~ ~ #j_data:can_build_on unless entity @n[tag=j.pode_crescer,distance=..1] run summon marker ~ ~ ~ {Tags:["j.pode_crescer","new","j.frente"]}
rotate @n[tag=new,tag=j.frente] ~180 0
execute positioned ^-2 ^ ^2 if block ~ ~ ~ #j_data:can_build_on unless entity @n[tag=j.pode_crescer,distance=..1] run summon marker ~ ~ ~ {Tags:["j.pode_crescer","new","j.direita"]}
rotate @n[tag=new,tag=j.esquerda] ~-90 0

tag @e[tag=new] remove new

# piso layer
execute positioned ^00 ^ ^ if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}
execute positioned ^01 ^ ^ if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}
execute positioned ^02 ^ ^ if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.log"]}
execute positioned ^-1 ^ ^ if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}
execute positioned ^-2 ^ ^ if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.log"]}

execute positioned ^00 ^ ^1 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.plank"]}
execute positioned ^01 ^ ^1 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.plank"]}
execute positioned ^02 ^ ^1 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}
execute positioned ^-1 ^ ^1 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.plank"]}
execute positioned ^-2 ^ ^1 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}

execute positioned ^00 ^ ^2 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.plank"]}
execute positioned ^01 ^ ^2 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.plank"]}
execute positioned ^02 ^ ^2 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}
execute positioned ^-1 ^ ^2 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.plank"]}
execute positioned ^-2 ^ ^2 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}

execute positioned ^00 ^ ^3 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.plank"]}
execute positioned ^01 ^ ^3 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.plank"]}
execute positioned ^02 ^ ^3 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}
execute positioned ^-1 ^ ^3 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.plank"]}
execute positioned ^-2 ^ ^3 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}

execute positioned ^00 ^ ^4 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}
execute positioned ^01 ^ ^4 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}
execute positioned ^02 ^ ^4 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.log"]}
execute positioned ^-1 ^ ^4 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}
execute positioned ^-2 ^ ^4 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.log"]}

# 1 layer
execute positioned ^00 ^1 ^ run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.door"]}
execute positioned ^01 ^1 ^ if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}
execute positioned ^02 ^1 ^ if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.log"]}
execute positioned ^-1 ^1 ^ if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}
execute positioned ^-2 ^1 ^ if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.log"]}

execute positioned ^00 ^1 ^1 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.air"]}
execute positioned ^01 ^1 ^1 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.air"]}
execute positioned ^-1 ^1 ^1 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.air"]}
execute positioned ^02 ^1 ^1 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}
execute positioned ^-2 ^1 ^1 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}

execute positioned ^00 ^1 ^2 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.air"]}
execute positioned ^01 ^1 ^2 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.air"]}
execute positioned ^-1 ^1 ^2 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.place.bed","j.construcao.post"]}
execute positioned ^02 ^1 ^2 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}
execute positioned ^-2 ^1 ^2 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}

execute positioned ^00 ^1 ^3 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.air"]}
execute positioned ^01 ^1 ^3 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.bancada"]}
execute positioned ^-1 ^1 ^3 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.bed.head"]}
execute positioned ^02 ^1 ^3 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}
execute positioned ^-2 ^1 ^3 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}

execute positioned ^00 ^1 ^4 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}
execute positioned ^01 ^1 ^4 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}
execute positioned ^02 ^1 ^4 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.log"]}
execute positioned ^-1 ^1 ^4 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}
execute positioned ^-2 ^1 ^4 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.log"]}

# 2 layer
execute positioned ^01 ^2 ^ if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}
execute positioned ^02 ^2 ^ if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.log"]}
execute positioned ^-1 ^2 ^ if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}
execute positioned ^-2 ^2 ^ if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.log"]}

execute positioned ^00 ^2 ^1 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.air"]}
execute positioned ^01 ^2 ^1 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.air"]}
execute positioned ^-1 ^2 ^1 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.air"]}
execute positioned ^02 ^2 ^1 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}
execute positioned ^-2 ^2 ^1 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}

execute positioned ^00 ^2 ^2 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.air"]}
execute positioned ^01 ^2 ^2 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.air"]}
execute positioned ^-1 ^2 ^2 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.air"]}
execute positioned ^02 ^2 ^2 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.air"]}
execute positioned ^-2 ^2 ^2 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.air"]}

execute positioned ^00 ^2 ^3 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.air"]}
execute positioned ^01 ^2 ^3 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.air"]}
execute positioned ^-1 ^2 ^3 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.air"]}
execute positioned ^02 ^2 ^3 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}
execute positioned ^-2 ^2 ^3 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}

execute positioned ^00 ^2 ^4 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}
execute positioned ^01 ^2 ^4 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}
execute positioned ^02 ^2 ^4 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.log"]}
execute positioned ^-1 ^2 ^4 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}
execute positioned ^-2 ^2 ^4 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.log"]}

# 3 layer
execute positioned ^00 ^3 ^ if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}
execute positioned ^01 ^3 ^ if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}
execute positioned ^02 ^3 ^ if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.log"]}
execute positioned ^-1 ^3 ^ if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}
execute positioned ^-2 ^3 ^ if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.log"]}

execute positioned ^00 ^3 ^1 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.air"]}
execute positioned ^01 ^3 ^1 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.air"]}
execute positioned ^-1 ^3 ^1 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.air"]}
execute positioned ^02 ^3 ^1 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}
execute positioned ^-2 ^3 ^1 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}

execute positioned ^00 ^3 ^2 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.lanter"]}
execute positioned ^01 ^3 ^2 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.air"]}
execute positioned ^-1 ^3 ^2 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.air"]}
execute positioned ^02 ^3 ^2 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}
execute positioned ^-2 ^3 ^2 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}

execute positioned ^00 ^3 ^3 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.air"]}
execute positioned ^01 ^3 ^3 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.air"]}
execute positioned ^-1 ^3 ^3 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.air"]}
execute positioned ^02 ^3 ^3 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}
execute positioned ^-2 ^3 ^3 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}

execute positioned ^00 ^3 ^4 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}
execute positioned ^01 ^3 ^4 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}
execute positioned ^02 ^3 ^4 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.log"]}
execute positioned ^-1 ^3 ^4 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.cobble"]}
execute positioned ^-2 ^3 ^4 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.log"]}

# telhado layer
execute positioned ^00 ^4 ^ if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.log"]}
execute positioned ^01 ^4 ^ if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.log"]}
execute positioned ^02 ^4 ^ if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.log"]}
execute positioned ^-1 ^4 ^ if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.log"]}
execute positioned ^-2 ^4 ^ if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.log"]}

execute positioned ^00 ^4 ^1 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.plank"]}
execute positioned ^01 ^4 ^1 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.plank"]}
execute positioned ^02 ^4 ^1 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.log"]}
execute positioned ^-1 ^4 ^1 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.plank"]}
execute positioned ^-2 ^4 ^1 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.log"]}

execute positioned ^00 ^4 ^2 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.plank"]}
execute positioned ^01 ^4 ^2 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.plank"]}
execute positioned ^02 ^4 ^2 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.log"]}
execute positioned ^-1 ^4 ^2 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.plank"]}
execute positioned ^-2 ^4 ^2 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.log"]}

execute positioned ^00 ^4 ^3 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.plank"]}
execute positioned ^01 ^4 ^3 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.plank"]}
execute positioned ^02 ^4 ^3 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.log"]}
execute positioned ^-1 ^4 ^3 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.plank"]}
execute positioned ^-2 ^4 ^3 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.log"]}

execute positioned ^00 ^4 ^4 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.log"]}
execute positioned ^01 ^4 ^4 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.log"]}
execute positioned ^02 ^4 ^4 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.log"]}
execute positioned ^-1 ^4 ^4 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.log"]}
execute positioned ^-2 ^4 ^4 if block ~ ~ ~ #j_data:can_build_on run summon marker ~ ~ ~ {Tags:["j.construcao","j.place.log"]}

