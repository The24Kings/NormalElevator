#TP Player to room's elevator from intermission
execute as @a[tag=inside] at @s run tp @s ~1 ~0 ~-317
schedule function tasks:set_respawn_point 10t

#Open Door
schedule function tasks:open_room_door 1s

#Give the player the room specific tag
tag @a add bedwars

#Display room timer (in ticks)
scoreboard players set Timer room_remainder 600

#Room logic
title @a title [{"text":"< "},{"text":" Protect The Bed ","color":"gold"},{"text":" >"}]

give @a minecraft:red_wool[can_place_on={blocks:['smooth_stone','end_stone','oak_planks','red_wool','red_bed']}] 64
give @a minecraft:oak_planks[can_place_on={blocks:['smooth_stone','end_stone','red_wool','oak_planks','red_bed']}] 64
give @a minecraft:end_stone[can_place_on={blocks:['smooth_stone','oak_planks','red_wool','end_stone','red_bed']}] 64

#Close Room's door after 30 sec (600 ticks)
schedule function tasks:close_room_door 30s

#Bring Players back after 33 sec (660 ticks)
schedule function elevator:intermission 33s