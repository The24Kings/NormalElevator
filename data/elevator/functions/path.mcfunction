##Walk
#North
execute as @e[type=!player,type=!armor_stand,sort=nearest] at @s if block ~ ~-1.1 ~ minecraft:magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-0.1 180 0
#South
execute as @e[type=!player,type=!armor_stand,sort=nearest] at @s if block ~ ~-1.1 ~ minecraft:magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~0.1 0 0
#East
execute as @e[type=!player,type=!armor_stand,sort=nearest] at @s if block ~ ~-1.1 ~ minecraft:magenta_glazed_terracotta[facing=west] run tp @s ~0.1 ~ ~ -90 0
#West
execute as @e[type=!player,type=!armor_stand,sort=nearest] at @s if block ~ ~-1.1 ~ minecraft:magenta_glazed_terracotta[facing=east] run tp @s ~-0.1 ~ ~ 90 0

##Shove
#North
execute as @e[type=!player,type=!armor_stand,sort=nearest] at @s if block ~ ~-1.1 ~ minecraft:blue_glazed_terracotta[facing=south] run tp @s ~ ~ ~-2.5 180 0
#South
execute as @e[type=!player,type=!armor_stand,sort=nearest] at @s if block ~ ~-1.1 ~ minecraft:blue_glazed_terracotta[facing=north] run tp @s ~ ~ ~2.5 0 0
#East
execute as @e[type=!player,type=!armor_stand,sort=nearest] at @s if block ~ ~-1.1 ~ minecraft:blue_glazed_terracotta[facing=west] run tp @s ~2.5 ~ ~ -90 0
#West
execute as @e[type=!player,type=!armor_stand,sort=nearest] at @s if block ~ ~-1.1 ~ minecraft:blue_glazed_terracotta[facing=east] run tp @s ~-2.5 ~ ~ 90 0

##Align
#North
execute as @e[type=!player,type=!armor_stand,sort=nearest] at @s if block ~ ~-1.1 ~ minecraft:gray_glazed_terracotta[facing=south] run tp @s ~ ~ ~-1.45 180 0
#South
execute as @e[type=!player,type=!armor_stand,sort=nearest] at @s if block ~ ~-1.1 ~ minecraft:gray_glazed_terracotta[facing=north] run tp @s ~ ~ ~1.45 0 0
#East
execute as @e[type=!player,type=!armor_stand,sort=nearest] at @s if block ~ ~-1.1 ~ minecraft:gray_glazed_terracotta[facing=west] run tp @s ~1.45 ~ ~ -90 0
#West
execute as @e[type=!player,type=!armor_stand,sort=nearest] at @s if block ~ ~-1.1 ~ minecraft:gray_glazed_terracotta[facing=east] run tp @s ~-1.45 ~ ~ 90 0