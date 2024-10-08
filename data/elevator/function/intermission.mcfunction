#TP all players outside the elevator to the intermission room
execute as @a[tag=!inside] run effect give @s minecraft:blindness 5 2 true
execute at @e[type=armor_stand,tag=intermission] run tp @a[tag=!inside] ^ ^-4 ^-5

#If player has tag specific room name; tp to intermission based on relative coords
execute as @a[tag=inside,tag=start] at @s run tp @s ~57 ~18 ~-35
execute as @a[tag=inside,tag=test_house] at @s run tp @s ~-40 ~ ~
execute as @a[tag=inside,tag=offensive_post] at @s run tp @s ~-65 ~ ~
execute as @a[tag=inside,tag=manner] at @s run tp @s ~-112 ~ ~
execute as @a[tag=inside,tag=geode_cave] at @s run tp @s ~-146 ~ ~
execute as @a[tag=inside,tag=treasure_cave] at @s run tp @s ~-189 ~ ~
execute as @a[tag=inside,tag=bathroom] at @s run tp @s ~-215 ~ ~
execute as @a[tag=inside,tag=pompeii] at @s run tp @s ~-352 ~ ~
execute as @a[tag=inside,tag=fish_tank] at @s run tp @s ~-95 ~ ~52
execute as @a[tag=inside,tag=crypt] at @s run tp @s ~-95 ~ ~84
execute as @a[tag=inside,tag=passage] at @s run tp @s ~-66 ~ ~118
execute as @a[tag=inside,tag=lost] at @s run tp @s ~-80 ~ ~177
execute as @a[tag=inside,tag=mansion] at @s run tp @s ~-35 ~ ~177
execute as @a[tag=inside,tag=maze] at @s run tp @s ~-155 ~ ~52
execute as @a[tag=inside,tag=temple] at @s run tp @s ~-215 ~ ~52
execute as @a[tag=inside,tag=chicken] at @s run tp @s ~-125 ~ ~52
execute as @a[tag=inside,tag=hallway] at @s run tp @s ~70 ~18 ~-40
execute as @a[tag=inside,tag=pig_race] at @s run tp @s ~-155 ~ ~177
execute as @a[tag=inside,tag=vault] at @s run tp @s ~-40 ~ ~266
execute as @a[tag=inside,tag=oasis] at @s run tp @s ~-97 ~ ~266
execute as @a[tag=inside,tag=skyblock] at @s run tp @s ~-229 ~0 ~237
execute as @a[tag=inside,tag=cherry_grove] at @s run tp @s ~0 ~0 ~266
execute as @a[tag=inside,tag=bedwars] at @s run tp @s ~-1 ~0 ~317
execute as @a[tag=inside,tag=pig_mower] at @s run tp @s ~-262 ~0 ~0
execute as @a[tag=inside,tag=bee_hive] at @s run tp @s ~-143 ~13 ~133
execute as @a[tag=inside,tag=server_room] at @s run tp @s ~-199 ~0 ~206
execute as @a[tag=inside,tag=office_building] at @s run tp @s ~-84 ~0 ~0
execute as @a[tag=inside,tag=deep_dark] at @s run tp @s ~-155 ~36 ~52
execute as @a[tag=inside,tag=greenhouse] at @s run tp @s ~-10 ~0 ~52


#Remove all room specific tags
tag @a remove start
tag @a remove test_house
tag @a remove offensive_post
tag @a remove manner
tag @a remove geode_cave
tag @a remove treasure_cave
tag @a remove bathroom
tag @a remove pompeii
tag @a remove fish_tank
tag @a remove crypt
tag @a remove passage
tag @a remove lost
tag @a remove mansion
tag @a remove maze
tag @a remove temple
tag @a remove chicken
tag @a remove hallway
tag @a remove pig_race
tag @a remove vault
tag @a remove oasis
tag @a remove skyblock
tag @a remove cherry_grove
tag @a remove bedwars
tag @a remove pig_mower
tag @a remove bee_hive
tag @a remove server_room
tag @a remove office_building
tag @a remove deep_dark
tag @a remove greenhouse

#Music
stopsound @a master
execute at @p as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=intermission] run playsound minecraft:intermission master @a ~ ~ ~ 1 1

#Room Cleanup
##Bedwars
clear @a end_stone
clear @a oak_planks
clear @a red_wool

##Oasis
time set noon

##Bee Hive 
kill @e[type=bee,tag=bee_hive_bee] 

##Maze
execute as @a run effect clear @s minecraft:darkness

##Lost 
setblock 87 18 -159 minecraft:stone

##Deep Dark 
setblock 168 -10 -35 minecraft:stone
fill 160 -13 -36 162 -13 -34 air
setblock 162 -13 -11 repeater[delay=4,facing=south]

#After everything has been removed, run, then go to next floor with intermission length of 300 ticks (15 sec)
schedule function elevator:goto_next_floor 15s
