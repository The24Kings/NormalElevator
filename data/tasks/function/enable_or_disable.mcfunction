#Add tag 'enabled' if lime wool is above the armor stand with 'floor' tag
execute as @e[type=armor_stand, sort=nearest, tag=floor] at @s if block ^ ^2 ^ minecraft:lime_wool run tag @s add enabled

#Remove tag 'enabled' if red wool is above the armor stand with 'floor' tag
execute as @e[type=armor_stand, sort=nearest, tag=floor] at @s if block ^ ^2 ^ minecraft:red_wool run tag @s remove enabled