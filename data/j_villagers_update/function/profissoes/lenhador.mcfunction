execute as @s[scores={j.cooldown=1..}] run return -1

execute if entity @n[tag=j.parte_de_arvore,distance=..50] run return run function j_villagers_update:fazer/cortar_arvore/main

execute as @s[scores={j.cooldown=1..}] run return -1

function j_villagers_update:fazer/procurar_arvore/area

