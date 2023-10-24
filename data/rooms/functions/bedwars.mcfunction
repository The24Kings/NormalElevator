#TP Player to room's elevator from intermission
execute as @a[tag=inside] at @s run tp @s ~1 ~0 ~-317
schedule function tasks:set_respawn_point 10t

#Open Door
schedule function tasks:open_room_door 1s

#Give the player the room specific tag
tag @a add bedwars

#Room logic
title @a title [{"text":"< "},{"text":" Protect The Bed ","color":"gold"},{"text":" >"}]

give @a minecraft:red_wool{CanPlaceOn:["minecraft:smooth_stone","minecraft:end_stone","minecraft:oak_planks","minecraft:red_wool"]} 64
give @a minecraft:oak_planks{CanPlaceOn:["minecraft:smooth_stone","minecraft:end_stone","minecraft:red_wool","minecraft:oak_planks"]} 64
give @a minecraft:end_stone{CanPlaceOn:["minecraft:smooth_stone","minecraft:oak_planks","minecraft:red_wool","minecraft:end_stone"]} 64

#Close Room's door after 30 sec (600 ticks)
schedule function tasks:close_room_door 30s

#Bring Players back after 33 sec (660 ticks)
schedule function elevator:intermission 33s