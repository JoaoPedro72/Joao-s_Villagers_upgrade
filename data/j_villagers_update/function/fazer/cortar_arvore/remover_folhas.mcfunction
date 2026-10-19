execute positioned ~ ~1.5 ~ if block ^ ^ ^.5 #leaves run playsound block.azalea_leaves.hit block @a[distance=..10] ~ ~ ~
execute positioned ~ ~1.5 ~ if block ^ ^ ^.5 #leaves run return run fill ^.5 ^ ^1 ^-0.5 ^ ^ air replace #leaves

execute positioned ~ ~1.5 ~ if block ^.5 ^ ^ #leaves run playsound block.azalea_leaves.hit block @a[distance=..10] ~ ~ ~
execute positioned ~ ~1.5 ~ if block ^.5 ^ ^ #leaves run return run fill ^.5 ^ ^1 ^-0.5 ^ ^ air replace #leaves

execute positioned ~ ~1.5 ~ if block ^-0.5 ^ ^ #leaves run playsound block.azalea_leaves.hit block @a[distance=..10] ~ ~ ~
execute positioned ~ ~1.5 ~ if block ^-0.5 ^ ^ #leaves run return run fill ^.5 ^ ^1 ^-0.5 ^ ^ air replace #leaves

execute positioned ~ ~2.5 ~ if block ^ ^ ^ #leaves run playsound block.azalea_leaves.hit block @a[distance=..10] ~ ~ ~
execute positioned ~ ~2.5 ~ if block ^ ^ ^ #leaves run return run fill ^ ^ ^ ^ ^ ^ air replace #leaves
