
function j_villagers_update:bancadas/config_macro
function j_villagers_update:bancadas/tem_dono with storage j:bloco

$data merge storage j:bloco {job:$(job)}

#larga essa parte
#procura vilager que trabalha aqui

#procura guarda sem trabalho
$execute as @s[tag=!j.tem_dono] if entity @n[tag=$(job),tag=!j.tem_bloco,distance=..40] run function j_villagers_update:bancadas/marcar_dono with storage j:bloco

#procura vilager
