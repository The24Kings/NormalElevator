#Remove tag 'floor' and 'selected' from armor stand with tag 'selected'
execute as @e[type=armor_stand,tag=selected, sort=nearest] run tag @s remove floor
execute as @e[type=armor_stand,tag=selected, sort=nearest] run tag @s remove selected

#Randomly assign one armor stand a tag called 'selected'
execute as @e[type=armor_stand, sort=random, limit=1, tag=floor, tag=enabled] run tag @s add selected
