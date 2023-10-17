#TP Player to room's elevator from intermission
execute as @e[tag=inside] at @s run tp @s ~125 ~ ~-52

#Open Door
schedule function tasks:open_room_door 1s

#Give the player the room specific tag
tag @a add chicken

#Room logic
##Spawn a bunch of chickens to die

#Close Room's door after 30 sec
schedule function tasks:close_room_door 30s

#Bring Players back after 33 sec 
schedule function elevator:intermission 33s