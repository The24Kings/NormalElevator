##Must be run during intermission
function elevator:reset_start
function rooms:reset_rooms
function elevator:reset_floors
function tasks:reset_credits

schedule clear elevator:goto_next_floor

execute as @e[type=minecraft:armor_stand,tag=room_area] run scoreboard players reset @s room_count
fill -26 27 37 -24 25 37 air
kill @e[type=minecraft:armor_stand,tag=hologram]
kill @e[type=minecraft:armor_stand,tag=credits_hologram]