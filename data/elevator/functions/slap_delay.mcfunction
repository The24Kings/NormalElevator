execute as @a if score @s slap_delay matches 1.. run scoreboard players remove @s slap_delay 1

execute as @a if score @s slap_delay matches 0 run effect clear @s weakness
