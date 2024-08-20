#Increment room counter
execute as @e[type=armor_stand, tag=room_area, sort=nearest] at @s run scoreboard players add @s room_count 1

#If Counter = 10 goto credits and stop game loop
execute as @e[type=armor_stand, tag=room_area, sort=nearest] at @s if score @s room_count matches 10 run function rooms:credits
execute as @e[type=armor_stand, tag=room_area, sort=nearest] at @s if score @s room_count matches 10 run execute as @e[type=armor_stand,tag=selected, sort=nearest] run tag @s remove selected

#Stop Music
stopsound @a

#Check each room if it has the 'selected' tag
execute as @e[type=armor_stand, tag=selected, tag=test_house, sort=nearest] at @s run function rooms:test_house
execute as @e[type=armor_stand, tag=selected, tag=offensive_post, sort=nearest] at @s run function rooms:offensive_post
execute as @e[type=armor_stand, tag=selected, tag=manner, sort=nearest] at @s run function rooms:manner
execute as @e[type=armor_stand, tag=selected, tag=geode_cave, sort=nearest] at @s run function rooms:geode_cave
execute as @e[type=armor_stand, tag=selected, tag=treasure_cave, sort=nearest] at @s run function rooms:treasure_cave
execute as @e[type=armor_stand, tag=selected, tag=bathroom, sort=nearest] at @s run function rooms:bathroom
execute as @e[type=armor_stand, tag=selected, tag=pompeii, sort=nearest] at @s run function rooms:pompeii
execute as @e[type=armor_stand, tag=selected, tag=fish_tank, sort=nearest] at @s run function rooms:fish_tank
execute as @e[type=armor_stand, tag=selected, tag=crypt, sort=nearest] at @s run function rooms:crypt
execute as @e[type=armor_stand, tag=selected, tag=passage, sort=nearest] at @s run function rooms:passage
execute as @e[type=armor_stand, tag=selected, tag=lost, sort=nearest] at @s run function rooms:lost
execute as @e[type=armor_stand, tag=selected, tag=mansion, sort=nearest] at @s run function rooms:mansion
execute as @e[type=armor_stand, tag=selected, tag=maze, sort=nearest] at @s run function rooms:maze
execute as @e[type=armor_stand, tag=selected, tag=temple, sort=nearest] at @s run function rooms:temple
execute as @e[type=armor_stand, tag=selected, tag=chicken, sort=nearest] at @s run function rooms:chicken
execute as @e[type=armor_stand, tag=selected, tag=hallway, sort=nearest] at @s run function rooms:hallway
execute as @e[type=armor_stand, tag=selected, tag=pig_race, sort=nearest] at @s run function rooms:pig_race
execute as @e[type=armor_stand, tag=selected, tag=vault, sort=nearest] at @s run function rooms:vault
execute as @e[type=armor_stand, tag=selected, tag=oasis, sort=nearest] at @s run function rooms:oasis
execute as @e[type=armor_stand, tag=selected, tag=skyblock, sort=nearest] at @s run function rooms:skyblock
execute as @e[type=armor_stand, tag=selected, tag=cherry_grove, sort=nearest] at @s run function rooms:cherry_grove
execute as @e[type=armor_stand, tag=selected, tag=bedwars, sort=nearest] at @s run function rooms:bedwars
execute as @e[type=armor_stand, tag=selected, tag=pig_mower, sort=nearest] at @s run function rooms:pig_mower
execute as @e[type=armor_stand, tag=selected, tag=bee_hive, sort=nearest] at @s run function rooms:bee_hive
execute as @e[type=armor_stand, tag=selected, tag=server_room, sort=nearest] at @s run function rooms:server_room
execute as @e[type=armor_stand, tag=selected, tag=office_building, sort=nearest] at @s run function rooms:office_building
execute as @e[type=armor_stand, tag=selected, tag=deep_dark, sort=nearest] at @s run function rooms:deep_dark


#Play arrival sound
schedule function sounds:ding 10t

#Select the next floor if 'room_count' is =< 9
execute as @e[type=armor_stand, tag=room_area, sort=nearest] at @s if score @s room_count matches ..9 run function rooms:select_floors