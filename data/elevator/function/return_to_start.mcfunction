#TP all players outside the elevator to the start room
execute as @a[tag=!inside] run effect give @s blindness 3 2 true
execute at @e[type=armor_stand,tag=start] run tp @a[tag=!inside] ^ ^-4 ^-5

#TP all players inside the credits elevator back to start
execute as @a[tag=inside] at @s run tp @s ~32 ~ ~

#Reset Start
schedule function elevator:reset_start 20t