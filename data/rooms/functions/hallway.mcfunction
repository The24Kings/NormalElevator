#TP Player to room's elevator from intermission
execute as @e[tag=inside] at @s run tp @s ~-45 ~ ~

#Open Door
schedule function tasks:open_room_door 1s

#Give the player the room specific tag
tag @a add hallway

#Room logic
##No room logic for this room

#Close Room's door after 10 sec (600 ticks)
schedule function tasks:close_room_door 10s

#Bring Players back after 13 sec (660 ticks)
schedule function elevator:intermission 13s