#If a player enters or is in an elevator add the tag 'inside', else if they pass outside the elevator remove it
execute at @e[type=minecraft:armor_stand,tag=elevator] positioned ^ ^-4 ^-5 if entity @e[type=!armor_stand,distance=..5] run tag @e[distance=..5] add inside
execute at @e[type=minecraft:armor_stand,tag=elevator] positioned ^ ^-4 ^2 if entity @e[type=!armor_stand,distance=..2,tag=inside] run tag @e[distance=..2] remove inside

#If a player enters or is in the 'start' elevator add the tag 'start', else if they pass outside the elevator remove it
execute at @e[type=minecraft:armor_stand,tag=elevator, tag=start] positioned ^ ^-4 ^-5 if entity @e[type=!armor_stand,distance=..5] run tag @e[type=!armor_stand,distance=..5] add start
execute at @e[type=minecraft:armor_stand,tag=elevator, tag=start] positioned ^ ^-4 ^2 if entity @e[type=!armor_stand,distance=..2,tag=start] run tag @e[type=!armor_stand,distance=..2] remove start