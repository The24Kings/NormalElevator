kill @e[type=minecraft:armor_stand,tag=elevator]

#Main Elevator
summon minecraft:armor_stand -50 11 72 {Tags:["start","elevator","open"],Invisible:true,Invulnerable:true,Rotation:[180f,0f]}
summon minecraft:armor_stand 7 29 37 {Tags:["intermission","elevator"],Invisible:true,Invulnerable:true,Rotation:[180f,0f]}

#Floor Elevators
##DEFAULT: summon minecraft:armor_stand ~ ~ ~ {Tags:["","elevator","close"],Invisible:true,Invulnerable:true,Rotation:[180f,0f]}
summon minecraft:armor_stand 47 29 37 {Tags:["test_house","elevator","close"],Invisible:true,Invulnerable:true,Rotation:[180f,0f]}
summon minecraft:armor_stand 72 29 37 {Tags:["offensive_post", "elevator","close"],Invisible:true,Invulnerable:true,Rotation:[180f,0f]}
summon minecraft:armor_stand 119 29 37 {Tags:["manner", "elevator","close"],Invisible:true,Invulnerable:true,Rotation:[180f,0f]}
summon minecraft:armor_stand 153 29 37 {Tags:["geode_cave","elevator","close"],Invisible:true,Invulnerable:true,Rotation:[180f,0f]}
summon minecraft:armor_stand 196 29 37 {Tags:["treasure_cave", "elevator","close"],Invisible:true,Invulnerable:true,Rotation:[180f,0f]}
summon minecraft:armor_stand -63 11 77 {Tags:["hallway","elevator","close"],Invisible:true,Invulnerable:true,Rotation:[180f,0f]}
summon minecraft:armor_stand 222 30 37 {Tags:["bathroom", "elevator","close"],Invisible:true,Invulnerable:true,Rotation:[180f,0f]}
summon minecraft:armor_stand -57 29 37 {Tags:["credits","elevator","close"],Invisible:true,Invulnerable:true,Rotation:[180f,0f]}
summon minecraft:armor_stand 359 29 37 {Tags:["pompeii","elevator","close"],Invisible:true,Invulnerable:true,Rotation:[180f,0f]}
summon minecraft:armor_stand 102 29 -15 {Tags:["fish_tank","elevator","close"],Invisible:true,Invulnerable:true,Rotation:[180f,0f]}
summon minecraft:armor_stand 102 30 -47 {Tags:["crypt", "elevator","close"],Invisible:true,Invulnerable:true,Rotation:[180f,0f]}
summon minecraft:armor_stand 73 29 -81 {Tags:["passage","elevator","close"],Invisible:true,Invulnerable:true,Rotation:[180f,0f]}
summon minecraft:armor_stand 87 29 -140 {Tags:["lost","elevator","close"],Invisible:true,Invulnerable:true,Rotation:[180f,0f]}
summon minecraft:armor_stand 42 29 -140 {Tags:["mansion", "elevator","close"],Invisible:true,Invulnerable:true,Rotation:[180f,0f]}
summon minecraft:armor_stand 162 29 -15 {Tags:["maze","elevator","close"],Invisible:true,Invulnerable:true,Rotation:[180f,0f]}
summon minecraft:armor_stand 222 29 -15 {Tags:["temple","elevator","close"],Invisible:true,Invulnerable:true,Rotation:[180f,0f]}
summon minecraft:armor_stand 132 29 -15 {Tags:["chicken", "elevator","close"],Invisible:true,Invulnerable:true,Rotation:[180f,0f]}
summon minecraft:armor_stand 162 29 -140 {Tags:["pig_race","elevator","close"],Invisible:true,Invulnerable:true,Rotation:[180f,0f]}
summon minecraft:armor_stand 47 29 -229 {Tags:["vault", "elevator","close"],Invisible:true,Invulnerable:true,Rotation:[180f,0f]}
summon minecraft:armor_stand 104 29 -229 {Tags:["oasis","elevator","close"],Invisible:true,Invulnerable:true,Rotation:[180f,0f]}
summon minecraft:armor_stand 236 29 -200 {Tags:["skyblock","elevator","close"],Invisible:true,Invulnerable:true,Rotation:[180f,0f]}
summon minecraft:armor_stand 7 29 -229 {Tags:["cherry_grove","elevator","close"],Invisible:true,Invulnerable:true,Rotation:[180f,0f]}
summon minecraft:armor_stand 8 29 -280 {Tags:["bedwars","elevator","close"],Invisible:true,Invulnerable:true,Rotation:[180f,0f]}
summon minecraft:armor_stand 269 29 37 {Tags:["pig_mower","elevator","close"],Invisible:true,Invulnerable:true,Rotation:[180f,0f]}
summon minecraft:armor_stand 150 16 -96 {Tags:["bee_hive","elevator","close"],Invisible:true,Invulnerable:true,Rotation:[180f,0f]}
summon minecraft:armor_stand 206 29 -169 {Tags:["server_room","elevator","close"],Invisible:true,Invulnerable:true,Rotation:[180f,0f]}
summon minecraft:armor_stand 91 29 37 {Tags:["office_building","elevator","close"],Invisible:true,Invulnerable:true,Rotation:[180f,0f]}
summon minecraft:armor_stand 162 -7 -15 {Tags:["deep_dark","elevator","close"],Invisible:true,Invulnerable:true,Rotation:[180f,0f]}

#Test Elevators
summon minecraft:armor_stand 5 8 24 {Tags:["open","elevator","dummy"],Invisible:true,Invulnerable:true,Rotation:[180f,0f]}
summon minecraft:armor_stand 13 8 8 {Tags:["open","dummy","elevator"],Invisible:true,Invulnerable:true,Rotation:[90f,0f]}
