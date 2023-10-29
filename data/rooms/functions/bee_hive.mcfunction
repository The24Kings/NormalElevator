#TP Player to room's elevator from intermission
execute as @a[tag=inside] at @s run tp @s ~143 ~-13 ~-133
schedule function tasks:set_respawn_point 10t

#Open Door
schedule function tasks:open_room_door 1s

tag @a add bee_hive

#Room logic
summon minecraft:bee 150.5 18 -105.5 {Tags:["bee_hive_bee"]}
summon minecraft:bee 150.5 18 -105.5 {Tags:["bee_hive_bee"]}
summon minecraft:bee 150.5 18 -105.5 {Tags:["bee_hive_bee"]}
summon minecraft:bee 150.5 18 -105.5 {Tags:["bee_hive_bee"]}
summon minecraft:bee 150.5 18 -105.5 {Tags:["bee_hive_bee"]}
summon minecraft:bee 150.5 18 -105.5 {Tags:["bee_hive_bee"]}

schedule function tasks:close_room_door 60s

schedule function elevator:intermission 63s