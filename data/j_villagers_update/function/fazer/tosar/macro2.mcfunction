$execute if entity @n[nbt={Sheared:1b},tag=$(id).target] run return run scoreboard players set @s j.cooldown 60

# vai ate a ovelha
$execute if score @s j.cooldown_virar matches 0 run rotate @s facing entity @n[tag=$(id).target] feet
$execute unless entity @n[tag=$(id).target,distance=..1] run return run function j_ai:move

# quando alcança uma ovelha mata ela
playsound item.shears.snip neutral @a[distance=..10]

data modify entity @n[type=sheep] Sheared set value 1b

scoreboard players set @s j.cooldown 300