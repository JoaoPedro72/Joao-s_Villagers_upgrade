# vai ate a vaca
$rotate @s facing entity @n[tag=$(id).target] feet
$execute unless entity @n[tag=$(id).target,distance=..1] run return run function j_ai:move

# quando alcança uma vaca mata ela
playsound minecraft:entity.player.attack.strong neutral @a[distance=..10]

$data modify entity @n[tag=$(id).target] DeathLootTable set value "j_data:null"
$kill @n[tag=$(id).target]

scoreboard players set @s j.cooldown 300