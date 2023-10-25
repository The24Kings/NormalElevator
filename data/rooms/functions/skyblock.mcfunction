#TP Player to room's elevator from intermission
execute as @a[tag=inside] at @s run tp @s ~229 ~0 ~-237
schedule function tasks:set_respawn_point 10t

#Open Door
schedule function tasks:open_room_door 1s

#Give the player the room specific tag
tag @a add skyblock

#Room logic
##No room logic for this room

#Close Room's door after 30 sec (600 ticks)
schedule function tasks:close_room_door 15s

#Bring Players back after 33 sec (660 ticks)
schedule function elevator:intermission 18s