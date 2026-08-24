#Função para ir ate o inimigo e atacar
#parametros:
#$(id) = id do guarda
#$(dano) = dano do guarda
#excutada por guarda
#at @s


$execute unless entity @e[tag=$(id).target] run return fail

$execute if score 20 j.ticks matches 1 if score @s j_vida_atual > 10 j.num run rotate @s facing entity @n[tag=$(id).target] feet
execute if score @s j_vida_atual <= 10 j.num run rotate @s ~180 ~

$execute if score @s j_vida_atual > 10 j.num unless entity @n[tag=$(id).target,distance=..1] run function j_ai:move

execute if entity @e[tag=agressive,distance=..1.5] if score @s j.cooldown matches 0 run playsound minecraft:entity.player.attack.sweep neutral @a[distance=..10] ~ ~ ~ 1 1
execute if entity @e[tag=agressive,distance=..1.5] if score @s j.cooldown matches 0 run function j_villagers_update:ia/swing
$execute if entity @e[tag=agressive,distance=..1.5] if score @s j.cooldown matches 0 run damage @n[tag=agressive,distance=..1.5,type=!creeper] $(dano) mob_attack by @s
execute if entity @e[tag=agressive,distance=..1.5] if score @s j.cooldown matches 0 run scoreboard players set @s j.cooldown 1

$execute unless entity @e[tag=$(id).target] run scoreboard players add @s j.kills 1

