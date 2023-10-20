#TP Player to room's elevator from intermission
execute as @e[tag=inside] at @s run tp @s ~215 ~ ~
schedule function tasks:set_respawn_point 10t

#Open Door
schedule function tasks:open_room_door 1s

#Give the player the room specific tag
tag @a add bathroom

#Room logic
##Playsound flushing
schedule function sounds:flush1 80t
schedule function sounds:flush2 120t
schedule function sounds:flush3 122t
schedule function sounds:flush4 124t
schedule function sounds:flush5 126t
schedule function sounds:flush6 128t
schedule function sounds:flush7 130t
schedule function sounds:flush8 132t
schedule function sounds:flush9 134t


#Close Room's door after 15 sec (600 ticks)
schedule function tasks:close_room_door 15s

#Bring Players back after 18 sec (660 ticks)
schedule function elevator:intermission 18s