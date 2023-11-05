#TP Player to room's elevator from intermission
execute as @a[tag=inside] at @s run tp @s ~262 ~0 ~0
schedule function tasks:set_respawn_point 10t

#Open Door
schedule function tasks:open_room_door 1s

#Give the player the room specific tag
tag @a add pig_mower

#Display room timer (in ticks)
scoreboard players set Timer room_remainder 320

#Room logic
summon minecraft:pig 250 25 36 {Tags:["mower"]}
summon minecraft:pig 250 25 35 {Tags:["mower"]}
summon minecraft:pig 250 25 34 {Tags:["mower"]}
summon minecraft:pig 250 25 33 {Tags:["mower"]}
summon minecraft:pig 250 25 32 {Tags:["mower"]}
summon minecraft:pig 250 25 31 {Tags:["mower"]}
summon minecraft:pig 250 25 30 {Tags:["mower"]}
summon minecraft:pig 250 25 29 {Tags:["mower"]}

#Close Room's door after 30 sec (600 ticks)
schedule function tasks:close_room_door 16s

#Bring Players back after 33 sec (660 ticks)
schedule function elevator:intermission 19s