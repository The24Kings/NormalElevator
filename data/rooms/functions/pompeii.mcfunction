#TP Player to room's elevator from intermission
execute as @e[tag=inside] at @s run tp @s ~352 ~ ~
schedule function tasks:set_respawn_point 10t

#Open Door
schedule function tasks:open_room_door 1s

#Give the player the room specific tag
tag @a add pompeii

#Room logic
##Explosions and volcano exploding

#Close Room's door after 60 sec (600 ticks)
schedule function tasks:close_room_door 60s

#Bring Players back after 63 sec (660 ticks)
schedule function elevator:intermission 63s