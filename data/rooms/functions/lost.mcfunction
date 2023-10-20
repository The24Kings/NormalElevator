#TP Player to room's elevator from intermission
execute as @e[tag=inside] at @s run tp @s ~80 ~ ~-177
schedule function tasks:set_respawn_point 10t

#Open Door
schedule function tasks:open_room_door 1s

#Give the player the room specific tag
tag @a add lost

#Room logic
##After a delay setblock a beacon in the vault

#Close Room's door after 30 sec (600 ticks)
schedule function tasks:close_room_door 30s

#Bring Players back after 33 sec (660 ticks)
schedule function elevator:intermission 33s