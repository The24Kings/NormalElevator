#TP Player to room's elevator from intermission
execute as @e[tag=inside] at @s run tp @s ~155 ~ ~-177
schedule function tasks:set_respawn_point 10t

#Open Door
schedule function tasks:open_room_door 1s

#Give the player the room specific tag
tag @a add pig_race

#Display room timer (in ticks)
scoreboard players set Timer room_remainder 2400

#Room logic
##No room logic for this room

#Close Room's door after 2 min
schedule function tasks:close_room_door 120s

#Bring Players back after 2 min 3 sec
schedule function elevator:intermission 123s