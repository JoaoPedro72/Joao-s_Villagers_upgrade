scoreboard players set @s j.cooldown 3
function j_villagers_update:ia/swing
playsound minecraft:item.firecharge.use neutral @a ~ ~ ~

summon marker ~ ~1.5 ~ {Tags:["bola_de_fogo_mago","new"]}
rotate @n[tag=bola_de_fogo_mago,tag=new] ~ ~
scoreboard players set @n[tag=bola_de_fogo_mago,tag=new] distance 40
tag @n[tag=bola_de_fogo_mago,tag=new] remove new

