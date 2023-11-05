execute as @e[type=armor_stand, tag=room_area] unless score @s room_remainder matches 0 run scoreboard players remove @s room_remainder 1
execute as @e[type=armor_stand, tag=room_area] run scoreboard players operation Minutes room_remainder = @s room_remainder
execute as @e[type=armor_stand, tag=room_area] run scoreboard players operation Seconds room_remainder = @s room_remainder
scoreboard players operation Minutes room_remainder /= Minutes Math
scoreboard players operation Seconds room_remainder /= Seconds Math
scoreboard players operation Seconds room_remainder %= 60 Math 

##TODO - Make it so that when the timer is below 10 seconds, it will display a 0 in front of the number

execute as @e[type=armor_stand, tag=room_area] if score @s room_remainder > Minimum Math run title @a actionbar ["",{"text":"[ "},{"score":{"name":"Minutes","objective":"room_remainder"}},{"text":" : "},{"score":{"name":"Seconds","objective":"room_remainder"}},{"text":" ]"}]