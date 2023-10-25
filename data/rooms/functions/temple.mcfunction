#TP Player to room's elevator from intermission
execute as @e[tag=inside] at @s run tp @s ~215 ~ ~-52
schedule function tasks:set_respawn_point 10t

#Open Door
schedule function tasks:open_room_door 1s

#Give the player the room specific tag
tag @a add temple

#Room logic
##Give all players a shovel that can break gravel
give @a minecraft:iron_shovel{CanDestroy:["minecraft:gravel"]}
##When a player presses the button at the end run 'function rooms:start_temple'

#Close Room's door after 120 sec (600 ticks)
schedule function tasks:close_room_door 120s

#Remove shovels from players
schedule function tasks:clear_shovel 90s

#Bring Players back after 123 sec (660 ticks)
schedule function elevator:intermission 93s