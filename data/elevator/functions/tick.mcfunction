#Force entities to follow a path
function elevator:path

#Check which floors are enabled and add or remove the 'enabled' tag
function tasks:enable_or_disable

#Check if the player is inside the elevator and add or remove the 'elevator' tag
function elevator:inside_elevator

#Check if a button is pressed and the elevator is open or closed
function elevator:elevator_door_close
function elevator:elevator_door_open

#Test if player is near the entrance hallway
function tasks:test_hallway

#Change the color of the armor in credits
function elevator:rainbow

#Room Remainder Countdown
function elevator:room_remainder_countdown

##Effects
execute as @a[gamemode=adventure] run effect give @s minecraft:saturation infinite 0 true
execute as @a[gamemode=adventure] run effect give @s minecraft:weakness infinite 255 true