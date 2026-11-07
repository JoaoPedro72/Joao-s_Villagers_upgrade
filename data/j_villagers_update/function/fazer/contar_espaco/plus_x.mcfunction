execute if score aux j.blocks matches 40.. run return run kill @s

$execute positioned ~1 ~ ~ if function j_villagers_update:fazer/contar_espaco/test_pos run summon marker ~ ~ ~ {Tags:["j.vilager_$(id)","plus_x"]}
$execute positioned ~ ~ ~1 if function j_villagers_update:fazer/contar_espaco/test_pos run summon marker ~ ~ ~ {Tags:["j.vilager_$(id)","plus_x"]}
$execute positioned ~ ~ ~-1 if function j_villagers_update:fazer/contar_espaco/test_pos run summon marker ~ ~ ~ {Tags:["j.vilager_$(id)","plus_x"]}

kill @s