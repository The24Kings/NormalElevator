#Randomly select armorstand with tag 'floor' and give it the 'selected' tag
function rooms:select_floors

title @a title "Welcome to"
title @a subtitle {"color":"gold","text":"Normal Elevator","underlined":true}

#Tp all players inside to intermission relative to their pos inside the elevator
function elevator:intermission