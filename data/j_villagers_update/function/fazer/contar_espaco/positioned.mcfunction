scoreboard players set @s j.blocks 2

$execute positioned ~1 ~ ~ if function j_villagers_update:fazer/contar_espaco/test_pos run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:item,item:glass_pane},Radius:0,Duration:200,Tags:["j.vilager_$(id)","plus_x"]}
$execute positioned ~-1 ~ ~ if function j_villagers_update:fazer/contar_espaco/test_pos run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:item,item:glass_pane},Radius:0,Duration:200,Tags:["j.vilager_$(id)","minus_x"]}
$execute positioned ~ ~ ~1 if function j_villagers_update:fazer/contar_espaco/test_pos run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:item,item:glass_pane},Radius:0,Duration:200,Tags:["j.vilager_$(id)","plus_z"]}
$execute positioned ~ ~ ~-1 if function j_villagers_update:fazer/contar_espaco/test_pos run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:item,item:glass_pane},Radius:0,Duration:200,Tags:["j.vilager_$(id)","minus_z"]}
