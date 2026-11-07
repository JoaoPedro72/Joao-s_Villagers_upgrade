scoreboard players set @s j.blocks 2

$execute positioned ~1 ~ ~ if function j_villagers_update:fazer/contar_espaco/test_pos run summon marker ~ ~ ~ {Tags:["j.vilager_$(id)","plus_x"]}
$execute positioned ~-1 ~ ~ if function j_villagers_update:fazer/contar_espaco/test_pos run summon marker ~ ~ ~ {Tags:["j.vilager_$(id)","minus_x"]}
$execute positioned ~ ~ ~1 if function j_villagers_update:fazer/contar_espaco/test_pos run summon marker ~ ~ ~ {Tags:["j.vilager_$(id)","plus_z"]}
$execute positioned ~ ~ ~-1 if function j_villagers_update:fazer/contar_espaco/test_pos run summon marker ~ ~ ~ {Tags:["j.vilager_$(id)","minus_z"]}
