#Kill all interaction entities
kill @e[type=interaction]
kill @e[type=armor_stand,tag=credits]
kill @e[type=armor_stand,tag=color]
kill @e[type=armor_stand,tag=trident]
kill @e[type=armor_stand,tag=axolotl]

#Summon new interaction entities
##Credits
summon minecraft:interaction 21.5 25.5 32.5 {height:2f,width:2f}
summon minecraft:interaction 21.5 25.5 28.5 {height:2f,width:2f}
summon minecraft:interaction 27.5 26 21 {height:3f,width:5f}
summon minecraft:interaction 21.5 25 24.5 {height:2f,width:2f}
summon minecraft:interaction 33.5 26 24.5 {height:2f,width:1f}
summon minecraft:interaction 33.5 26 32.5 {height:2f,width:1f}
summon minecraft:interaction 32.5 25 26.5
summon minecraft:interaction 32.5 25 30.5
summon minecraft:interaction 22.5 25 30.5
summon minecraft:interaction 22.5 25 26.5

##Starting Area
summon minecraft:interaction -31.5 27 40.5 {height:1.5f,width:3.5f}

##Server Room 
summon minecraft:interaction 208.5 23 -184.5 {height:1.5f,width:1.5f}
summon minecraft:interaction 204.5 23 -188.5 {height:1.5f,width:1.5f}
summon minecraft:interaction 207.5 23 -188.5 {height:1.5f,width:1.5f}

##Office Building 
summon minecraft:interaction 96 26 25 {width:3.02f}

#Spawn Creater Armor Stands
summon minecraft:armor_stand 25 26 21 {Tags:["credits"], DisabledSlots:4144959, ShowArms:true,Pose:{LeftArm:[-122.23f,-40.45f,0f], RightLeg:[-45f,22.5f,0f],RightArm:[-136.275f,64f,0f], Head:[-23.1f,-23.22f,0f]}, Rotation:[-45f,0f], HandItems:[{id:"minecraft:diamond_sword"},{}], ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":{rgb:8215109}}},{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":{rgb:2500134}}},{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":{rgb:231676}}},{id:"minecraft:player_head",components:{"minecraft:profile":{"name":"Ryan322"}}}],NoBasePlate:true,Invulnerable:true}
summon minecraft:armor_stand 26 26.5 20 {Tags:["credits"], DisabledSlots:4144959, ShowArms:true,Pose:{LeftArm:[-30f,-53.58f,0f], RightLeg:[-47.94f,156.44f,0f], RightArm:[-147.48f,53.49f,0f]}, Rotation:[-25f,0f], HandItems:[{id:"minecraft:porkchop"},{}], ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":{rgb:8215109}}},{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":{rgb:5053263}}},{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":{rgb:16716947}}},{id:"minecraft:player_head",components:{"minecraft:profile":{"name":"Duke_Pigron"}}}],NoBasePlate:true,Invulnerable:true}
summon minecraft:armor_stand 27 26.4 20 {Tags:["credits"], DisabledSlots:4144959, ShowArms:true,Pose:{LeftLeg:[-78.35f,-24.53f,0f], LeftArm:[-106.38f,-40.58f,0f], RightLeg:[-81.43f,26.42f,0f], RightArm:[-36.25f,-18.68f,0f], Head:[7.3f,0f,0f]}, HandItems:[{id:"minecraft:command_block"},{}], ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":{rgb:8215109}}},{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":{rgb:2500134}}},{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":{rgb:4210752}}},{id:"minecraft:player_head",components:{"minecraft:profile":{"name":"24Kings"}}}],NoBasePlate:true,Invulnerable:true,NoGravity:true}
summon minecraft:armor_stand 28 26.5 20 {Tags:["credits"], DisabledSlots:4144959, ShowArms:true,Pose:{LeftLeg:[-16.22f,-51.41f,0f], LeftArm:[-148.25f,-45.34f,0f], RightLeg:[-24.1f,109.84f,0f], RightArm:[-132.67f,12.78f,0f], Head:[8.33f,10.7f,0f]}, Rotation:[25f,0f], HandItems:[{id:"minecraft:writable_book"},{}], ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":{rgb:8215109}}},{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":{rgb:2500134}}},{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":{rgb:4673363}}},{id:"minecraft:player_head",components:{"minecraft:profile":{"name":"ThePebblePrince"}}}],NoBasePlate:true,Invulnerable:true}
summon minecraft:armor_stand 29 26 21 {Tags:["credits"], DisabledSlots:4144959, ShowArms:true,Pose:{LeftLeg:[-6.87f,-21.98f,0f], LeftArm:[-33.64f,41.42f,0f], RightLeg:[-9.55f,32.21f,0f], RightArm:[-26.61f,-41.59f,0f]}, Rotation:[45f,0f], HandItems:[{id:"minecraft:copper_block"},{}], ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":{rgb:8215109}}},{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":{rgb:2500134}}},{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":{rgb:6192150}}},{id:"minecraft:player_head",components:{"minecraft:profile":{"name":"Builderboy426"}}}],NoBasePlate:true,Invulnerable:true}

#Spawn Color Armor Stand
summon minecraft:armor_stand 33 26 24 {Tags:["color"], DisabledSlots:4144959, NoBasePlate:true,Invulnerable:true,Invisible:true, Rotation:[90f,0f]}

#Summon Trident
summon minecraft:armor_stand 33.5 25.35 32.2 {Tags:["trident"], DisabledSlots:4144959, Pose:{RightArm:[-90f,60f,180f], Body:[-15.54f,1f,0f]}, NoBasePlate:true, Invulnerable:true, Invisible:true, NoGravity:true, Rotation:[90.461f,0f], HandItems:[{id:"minecraft:trident"},{}]}
summon minecraft:armor_stand 33.8 25.95 32.5 {Tags:["trident"], DisabledSlots:4144959, Pose:{RightArm:[-80.63f,-19f,0f], LeftArm:[-72.8f,43.39f,0f], Body:[0f,3.6f,0f]}, NoBasePlate:true, Invulnerable:true, NoGravity:true, ShowArms:true, Rotation:[90f,0f]}
summon minecraft:armor_stand 22.02 24.61 24.83 {Tags:["axolotl"], DisabledSlots:4144959, Pose:{RightArm:[-86.44f,0.93f,0f]}, NoBasePlate:true, Invulnerable:true, Invisible:true, NoGravity:true, Rotation:[89.61f,0f], HandItems:[{id:"minecraft:axolotl_bucket"},{}]}