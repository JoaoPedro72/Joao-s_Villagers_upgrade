
# vai ate a vaca
$rotate @s facing entity @n[tag=$(id).target] feet
$execute unless entity @n[tag=$(id).target,distance=..2] run function j_ai:move

# enquanto não alcança quebra a função
$execute if entity @n[tag=$(id).target,distance=..3] run tag @s remove achou_vacas
execute if entity @s[tag=achou_vacas] run return 0

# quando alcança uma vaca mata ela
playsound minecraft:entity.player.attack.strong neutral @a[distance=..10]
$kill @n[tag=$(id).target]
tag @s remove quer_matar_vaca
tag @s[scores={j.num_vacas=6..}] add quer_matar_vaca

scoreboard players set @s j.cooldown 600