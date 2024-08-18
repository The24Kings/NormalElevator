execute unless score Timer room_remainder matches 0 run scoreboard players remove Timer room_remainder 1
scoreboard players operation Minutes room_remainder = Timer room_remainder
scoreboard players operation Seconds room_remainder = Timer room_remainder
scoreboard players operation Minutes room_remainder /= Minutes Math
scoreboard players operation Seconds room_remainder /= Seconds Math
scoreboard players operation Seconds room_remainder %= 60 Math 

execute if score Seconds room_remainder > Minimum Math run title @a actionbar ["",{"text":"[ ","color":"gold"},{"score":{"name":"Minutes","objective":"room_remainder"}},{"text":" : "},{"score":{"name":"Seconds","objective":"room_remainder"}},{"text":" ]", "color":"gold"}]
execute unless score Timer room_remainder = Zero Math if score Seconds room_remainder <= Minimum Math run title @a actionbar ["",{"text":"[ ","color":"gold"},{"score":{"name":"Minutes","objective":"room_remainder"}},{"text":" : "},{"text":"0"},{"score":{"name":"Seconds","objective":"room_remainder"}},{"text":" ]", "color":"gold"}]
