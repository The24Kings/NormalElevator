#Checks all armor_stands called "door" and sets the door_timer_close to 1 if the button near them is pressed
execute as @e[type=armor_stand, tag=open, sort=nearest] at @s if block ^3 ^-4 ^-2 minecraft:stone_button[powered=true] run scoreboard players set @s door_timer_close 1

#Checks for door_timer_close and updates door_timer every tick
execute as @e[type=armor_stand, tag=open, sort=nearest] at @s if score @s door_timer_close matches 1 run scoreboard players add @s door_timer 1

#Remove button
execute as @e[type=armor_stand, tag=credits, sort=nearest] at @s if score @s door_timer_close matches 1 run setblock ^3 ^-4 ^-2 air

#Fills blocks for door sequence based on door_timer
#1 Tick
execute as @e[type=armor_stand, tag=open, sort=nearest] at @s if score @s door_timer matches 1 run fill ^2 ^-3 ^1 ^-2 ^-3 ^1 minecraft:waxed_cut_copper_slab[type=top]
execute as @e[type=armor_stand, tag=open, sort=nearest] at @s if score @s door_timer matches 1 run setblock ^2 ^-4 ^-1 minecraft:iron_bars
execute as @e[type=armor_stand, tag=open, sort=nearest] at @s if score @s door_timer matches 1 run setblock ^-2 ^-5 ^-1 minecraft:iron_bars
execute as @e[type=armor_stand, tag=open, sort=nearest] at @s if score @s door_timer matches 1 run playsound block.chest.locked master @a ~ ~ ~ 1 .5 0

#10 Ticks
execute as @e[type=armor_stand, tag=open, sort=nearest] at @s if score @s door_timer matches 10 run fill ^2 ^-3 ^1 ^-2 ^-3 ^1 minecraft:waxed_copper_block
execute as @e[type=armor_stand, tag=open, sort=nearest] at @s if score @s door_timer matches 10 run setblock ^1 ^-4 ^-1 minecraft:iron_bars
execute as @e[type=armor_stand, tag=open, sort=nearest] at @s if score @s door_timer matches 10 run setblock ^-1 ^-5 ^-1 minecraft:iron_bars
execute as @e[type=armor_stand, tag=open, sort=nearest] at @s if score @s door_timer matches 10 run setblock ^2 ^-5 ^-1 minecraft:iron_bars
execute as @e[type=armor_stand, tag=open, sort=nearest] at @s if score @s door_timer matches 10 run setblock ^-2 ^-4 ^-1 minecraft:iron_bars
execute as @e[type=armor_stand, tag=open, sort=nearest] at @s if score @s door_timer matches 10 run playsound block.chest.locked master @a ~ ~ ~ 1 .5 0

#20 Ticks
execute as @e[type=armor_stand, tag=open, sort=nearest] at @s if score @s door_timer matches 20 run fill ^2 ^-4 ^1 ^-2 ^-4 ^1 minecraft:waxed_cut_copper_slab[type=top]
execute as @e[type=armor_stand, tag=open, sort=nearest] at @s if score @s door_timer matches 20 run setblock ^1 ^-5 ^-1 minecraft:iron_bars
execute as @e[type=armor_stand, tag=open, sort=nearest] at @s if score @s door_timer matches 20 run setblock ^-1 ^-4 ^-1 minecraft:iron_bars

execute as @e[type=armor_stand, tag=open, tag=facing_west, sort=nearest] at @s if score @s door_timer matches 20 run setblock ^1 ^-4 ^-1 minecraft:iron_bars[north=true]
execute as @e[type=armor_stand, tag=open, tag=facing_west, sort=nearest] at @s if score @s door_timer matches 20 run setblock ^-1 ^-5 ^-1 minecraft:iron_bars[south=true]
execute as @e[type=armor_stand, tag=open, tag=facing_north, sort=nearest] at @s if score @s door_timer matches 20 run setblock ^1 ^-4 ^-1 minecraft:iron_bars[east=true]
execute as @e[type=armor_stand, tag=open, tag=facing_north, sort=nearest] at @s if score @s door_timer matches 20 run setblock ^-1 ^-5 ^-1 minecraft:iron_bars[west=true]

execute as @e[type=armor_stand, tag=open, tag=facing_east, sort=nearest] at @s if score @s door_timer matches 20 run setblock ^1 ^-4 ^-1 minecraft:iron_bars[south=true]
execute as @e[type=armor_stand, tag=open, tag=facing_east, sort=nearest] at @s if score @s door_timer matches 20 run setblock ^-1 ^-5 ^-1 minecraft:iron_bars[north=true]
execute as @e[type=armor_stand, tag=open, tag=facing_south, sort=nearest] at @s if score @s door_timer matches 20 run setblock ^1 ^-4 ^-1 minecraft:iron_bars[west=true]
execute as @e[type=armor_stand, tag=open, tag=facing_south, sort=nearest] at @s if score @s door_timer matches 20 run setblock ^-1 ^-5 ^-1 minecraft:iron_bars[east=true]

execute as @e[type=armor_stand, tag=open, sort=nearest] at @s if score @s door_timer matches 20 run playsound block.chest.locked master @a ~ ~ ~ 1 .5 0

#30 Ticks
execute as @e[type=armor_stand, tag=open, sort=nearest] at @s if score @s door_timer matches 30 run fill ^2 ^-4 ^1 ^-2 ^-4 ^1 minecraft:waxed_copper_block

execute as @e[type=armor_stand, tag=open, tag=facing_west, sort=nearest] at @s if score @s door_timer matches 30 run fill ^ ^-4 ^-1 ^ ^-5 ^-1 minecraft:andesite_wall[up=true,north=tall,south=tall]
execute as @e[type=armor_stand, tag=open, tag=facing_west, sort=nearest] at @s if score @s door_timer matches 30 run fill ^ ^-4 ^-1 ^ ^-5 ^-1 minecraft:andesite_wall[up=true,north=tall,south=tall]
execute as @e[type=armor_stand, tag=open, tag=facing_north, sort=nearest] at @s if score @s door_timer matches 30 run fill ^ ^-4 ^-1 ^ ^-5 ^-1 minecraft:andesite_wall[up=true,east=tall,west=tall]
execute as @e[type=armor_stand, tag=open, tag=facing_north, sort=nearest] at @s if score @s door_timer matches 30 run fill ^ ^-4 ^-1 ^ ^-5 ^-1 minecraft:andesite_wall[up=true,east=tall,west=tall]

execute as @e[type=armor_stand, tag=open, tag=facing_east, sort=nearest] at @s if score @s door_timer matches 30 run fill ^ ^-4 ^-1 ^ ^-5 ^-1 minecraft:andesite_wall[up=true,north=tall,south=tall]
execute as @e[type=armor_stand, tag=open, tag=facing_east, sort=nearest] at @s if score @s door_timer matches 30 run fill ^ ^-4 ^-1 ^ ^-5 ^-1 minecraft:andesite_wall[up=true,north=tall,south=tall]
execute as @e[type=armor_stand, tag=open, tag=facing_south, sort=nearest] at @s if score @s door_timer matches 30 run fill ^ ^-4 ^-1 ^ ^-5 ^-1 minecraft:andesite_wall[up=true,east=tall,west=tall]
execute as @e[type=armor_stand, tag=open, tag=facing_south, sort=nearest] at @s if score @s door_timer matches 30 run fill ^ ^-4 ^-1 ^ ^-5 ^-1 minecraft:andesite_wall[up=true,east=tall,west=tall]

execute as @e[type=armor_stand, tag=open, sort=nearest] at @s if score @s door_timer matches 30 run playsound block.chest.locked master @a ~ ~ ~ 1 .5 0

#40 Ticks
execute as @e[type=armor_stand, tag=open, sort=nearest] at @s if score @s door_timer matches 40 run fill ^2 ^-5 ^1 ^-2 ^-5 ^1 minecraft:waxed_cut_copper_slab[type=top]
execute as @e[type=armor_stand, tag=open, sort=nearest] at @s if score @s door_timer matches 40 run playsound block.chest.locked master @a ~ ~ ~ 1 .5 0

#50 Ticks
execute as @e[type=armor_stand, tag=open, sort=nearest] at @s if score @s door_timer matches 50 run fill ^2 ^-5 ^1 ^-2 ^-5 ^1 minecraft:waxed_copper_block
execute as @e[type=armor_stand, tag=open, sort=nearest] at @s if score @s door_timer matches 50 run playsound block.chest.locked master @a ~ ~ ~ 1 .5 0

#Sets armor_stand tags above current door to close
execute as @e[type=armor_stand, tag=open, sort=nearest] if score @s door_timer matches 50 run tag @s remove open
execute as @e[type=armor_stand, sort=nearest] if score @s door_timer matches 50 run tag @s add close

#Teleports all players inside a closed elevator to the intermission room
#Tag:"start" will start game loop
#Tag:"credits" will tp to start
execute as @e[type=armor_stand, tag=close, tag=start, sort=nearest] if score @s door_timer matches 50 run function elevator:start
execute as @e[type=armor_stand, tag=close, tag=credits, sort=nearest] if score @s door_timer matches 50 run function elevator:return_to_start

#Resets the scoreboards after the door_timer reaches 50
execute as @e[type=armor_stand, tag=close, sort=nearest] if score @s door_timer matches 50 run scoreboard players reset @s door_timer_close
execute as @e[type=armor_stand, tag=close, sort=nearest] if score @s door_timer matches 50 run scoreboard players reset @s door_timer