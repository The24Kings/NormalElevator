#TP Player to room's elevator from intermission
execute as @a[tag=inside] at @s run tp @s ~-64 ~ ~

#Open Door
schedule function tasks:open_room_door 1s

#Room logic
##Set time to night
time set 20000
##Summon credits hologram
summon minecraft:armor_stand -66.5 23.5 14.5 {Tags:["credits_hologram"],Invisible:1,CustomName:'{"text":"Credits"}',CustomNameVisible:1, NoGravity:1}

##Create a button to close elevator
schedule function tasks:replace_credits_button 71t