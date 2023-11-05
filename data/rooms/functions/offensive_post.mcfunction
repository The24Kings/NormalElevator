#TP Player to room's elevator from intermission
execute as @e[tag=inside] at @s run tp @s ~65 ~ ~
schedule function tasks:set_respawn_point 10t

#Open Door
schedule function tasks:open_room_door 1s

#Give the player the room specific tag
tag @a add offensive_post

#Display room timer (in ticks)
scoreboard players set Timer room_remainder 300

#Room logic
##No room logic for this room

#Close Room's door after 15 sec (300 ticks)
schedule function tasks:close_room_door 15s

#Bring Players back after 18 sec (320 ticks)
schedule function elevator:intermission 18s