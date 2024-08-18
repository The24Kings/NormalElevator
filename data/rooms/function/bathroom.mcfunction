#TP Player to room's elevator from intermission
execute as @e[tag=inside] at @s run tp @s ~215 ~ ~
schedule function tasks:set_respawn_point 10t

#Open Door
schedule function tasks:open_room_door 1s

#Give the player the room specific tag
tag @a add bathroom

#Display room timer (in ticks)
scoreboard players set Timer room_remainder 300

#Room logic
##Playsound flushing
schedule function sounds:flush1 80t
schedule function sounds:flush2 170t
schedule function sounds:flush3 198t
schedule function sounds:flush4 218t
schedule function sounds:flush5 226t
schedule function sounds:flush6 234t
schedule function sounds:flush7 242t
schedule function sounds:flush8 250t
schedule function sounds:flush9 258t


#Close Room's door after 15 sec (600 ticks)
schedule function tasks:close_room_door 15s

#Bring Players back after 18 sec (660 ticks)
schedule function elevator:intermission 18s
