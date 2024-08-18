#Remove 'break_away' tag
execute as @e[type=armor_stand,tag=break_away] run tag @s remove active

#Play effects
particle block{block_state:{Name:polished_andesite}} -56.5 24 76.5 1 1 1 1 500
playsound minecraft:entity.zombie.break_wooden_door master @a -56 25 75 .3 .6

#Break Floor
setblock -57 24 76 air
setblock -58 24 75 air
setblock -57 24 75 air
setblock -57 24 74 air
setblock -56 24 75 air
setblock -56 24 74 air
setblock -56 24 74 air