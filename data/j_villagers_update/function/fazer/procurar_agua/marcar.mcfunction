scoreboard players set @s j.achou_agua 1

execute unless entity @n[distance=..15,tag=j.ponto_com_agua] run summon marker ~ ~ ~ {Tags:["j.ponto_com_agua"]}

say agua
return 1