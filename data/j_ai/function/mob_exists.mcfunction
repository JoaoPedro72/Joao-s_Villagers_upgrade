$execute if entity @e[nbt={UUID:$(target)}] run return fail
scoreboard players add @s j.kills 1

data modify storage j:uuid target set from entity @s UUID
