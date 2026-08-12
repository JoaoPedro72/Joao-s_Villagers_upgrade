# achou tira tag sem tem_dono
# n achou da tag e set cooldown
# com tag e cooldown = 0 marca sem tem_dono

$execute if entity @n[nbt={UUID:$(UUID)}] run scoreboard players set @s j.cooldown 30 

$execute if entity @n[nbt={UUID:$(UUID)}] run tag @s remove AI
$execute unless entity @n[nbt={UUID:$(UUID)}] run tag @s add AI

execute unless entity @s[tag=AI] run return 1

tag @s[scores={j.cooldown=0}] remove j.tem_dono

scoreboard players set @s j.UUID.0 0
scoreboard players set @s j.UUID.1 0
scoreboard players set @s j.UUID.2 0
scoreboard players set @s j.UUID.3 0

return fail