#TP Player to room's elevator from intermission
execute as @e[tag=inside] at @s run tp @s ~95 ~ ~-84
schedule function tasks:set_respawn_point 10t

#Open Door
schedule function tasks:open_room_door 1s

#Give the player the room specific tag
tag @a add crypt

#Display room timer (in ticks)
scoreboard players set Timer room_remainder 600

#Room logic
##Summon Villager above path

#Close Room's door after 30 sec (600 ticks)
schedule function tasks:close_room_door 30s

#Bring Players back after 33 sec (660 ticks)
schedule function elevator:intermission 33s