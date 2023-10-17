#TP Player to room's elevator from intermission
execute as @e[tag=inside] at @s run tp @s ~65 ~ ~

#Open Door
schedule function tasks:open_room_door 1s

#Give the player the room specific tag
tag @a add offensive_post

#Room logic
##No room logic for this room

#Close Room's door after 15 sec (300 ticks)
schedule function tasks:close_room_door 15s

#Bring Players back after 18 sec (320 ticks)
schedule function elevator:intermission 18s