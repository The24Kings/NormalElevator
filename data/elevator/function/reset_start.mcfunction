#Open start door
execute as @e[type=armor_stand, tag=start, tag=close] at @s run scoreboard players set @s door_timer_open 1

#Wait for door to fully open before spawning new button
schedule function tasks:replace_start_button 51t

#Reset all rooms
function rooms:reset_rooms
function rooms:refresh_rooms

#Turn it back to day
time set noon

#Kill Credits hologram
kill @e[type=minecraft:armor_stand,tag=credits_hologram]

#Reset 'room_count' scoreboard
execute as @e[type=armor_stand, tag=room_area, sort=nearest] run scoreboard players reset @s room_count