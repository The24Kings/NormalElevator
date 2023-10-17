#Randomly select armorstand with tag 'floor' and give it the 'selected' tag
function rooms:select_floors

#Check which floors are enabled and add or remove the 'enabled' tag
function tasks:enable_or_disable

#Check if the player is inside the elevator and add or remove the 'elevator' tag
function elevator:inside_elevator

title @a title "Welcome to"
title @a subtitle {"color":"gold","text":"Normal Elevator","underlined":true}

#Tp all players inside to intermission relative to their pos inside the elevator
function elevator:intermission