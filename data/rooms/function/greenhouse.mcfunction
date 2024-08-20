#TP Player to room's elevator from intermission
execute as @a[tag=inside] at @s run tp @s ~10 ~0 ~-52
schedule function tasks:set_respawn_point 10t

#Open Door
schedule function tasks:open_room_door 1s

#Give the player the room specific tag
tag @a add greenhouse

#Display room timer (in ticks)
scoreboard players set Timer room_remainder 1200
#Room logic
##No room logic for this room

#Close Room's door after 30 sec (600 ticks)
schedule function tasks:close_room_door 60s

#Bring Players back after 33 sec (660 ticks)
schedule function elevator:intermission 63s
