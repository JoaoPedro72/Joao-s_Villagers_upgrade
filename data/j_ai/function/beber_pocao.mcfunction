execute if entity @s[scores={j.cooldown=5}] run item replace entity @s weapon.offhand with potion[potion_contents={custom_effects:[{id:instant_health,duration:20,amplifier:1}]},custom_name=[{"text":"Poção de cura","italic":false}],tooltip_display={hidden_components:[potion_contents]}] 1
execute if entity @s[scores={j.cooldown=1..4}] if score 10 j.ticks matches 1 run playsound minecraft:entity.generic.drink neutral @a[distance=..10] ~ ~ ~ 1 1
execute if entity @s[scores={j.cooldown=1}] run item replace entity @s weapon.offhand with air
execute if entity @s[scores={j.cooldown=1}] run effect give @s instant_health
execute if entity @s[scores={j.cooldown=1}] run playsound minecraft:entity.player.burp neutral @a[distance=..10] ~ ~ ~ 1 1
execute if entity @s[scores={j.cooldown=..1}] run tag @s remove com_fome
