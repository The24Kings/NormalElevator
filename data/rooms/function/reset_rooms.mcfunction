#Kill all armor stands within a 24 block radius of armor stand 'room_area'
execute at @e[type=minecraft:armor_stand,tag=room_area] positioned ^ ^-5 ^ if entity @e[type=armor_stand,distance=..24] run kill @e[type=minecraft:armor_stand,tag=!room_area,distance=..24]

#Respawn all armor stands in room_area
execute at @e[type=minecraft:armor_stand,tag=room_area] positioned ^ ^-7 ^ run fill ^10 ^ ^10 ^-10 ^ ^10 minecraft:redstone_block
execute at @e[type=minecraft:armor_stand,tag=room_area] positioned ^ ^-7 ^ run fill ^10 ^ ^10 ^-10 ^ ^10 minecraft:stone

execute at @e[type=minecraft:armor_stand,tag=room_area] positioned ^ ^-7 ^ run fill ^10 ^ ^8 ^-10 ^ ^8 minecraft:redstone_block
execute at @e[type=minecraft:armor_stand,tag=room_area] positioned ^ ^-7 ^ run fill ^10 ^ ^8 ^-10 ^ ^8 minecraft:stone

execute at @e[type=minecraft:armor_stand,tag=room_area] positioned ^ ^-7 ^ run fill ^10 ^ ^6 ^-10 ^ ^6 minecraft:redstone_block
execute at @e[type=minecraft:armor_stand,tag=room_area] positioned ^ ^-7 ^ run fill ^10 ^ ^6 ^-10 ^ ^6 minecraft:stone
