#TP Player to room's elevator from intermission
execute as @a[tag=inside] at @s run tp @s ~155 ~-36 ~-52
schedule function tasks:set_respawn_point 10t

#Open Door
schedule function tasks:open_room_door 1s

#Give the player the room specific tag
tag @a add deep_dark

#Display room timer (in ticks)
scoreboard players set Timer room_remainder 200
#Room logic
setblock 168 -10 -35 minecraft:redstone_block

#Close Room's door after 30 sec (600 ticks)
schedule function tasks:close_room_door 10s

#Bring Players back after 33 sec (660 ticks)
schedule function elevator:intermission 13s
