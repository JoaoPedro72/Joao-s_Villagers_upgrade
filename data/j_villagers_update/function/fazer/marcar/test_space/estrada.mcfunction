execute store result storage j:aux construcao int 1 run random value 0..4
execute unless data storage j:aux {construcao:0} run return fail

execute if data storage j:aux {construcao:0} run function j_villagers_update:fazer/marcar/estrada
kill @s
return 1