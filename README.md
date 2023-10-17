# How to add a floor to a Normal Elevator

---

### Create the room

- Create an elevator in your desired area, making sure to note the center coordinates of the elevator.

### Place the elevator's marker

- Create a new summon command for the new elevator armor stand into `reset_floors.mcfunction`
    - Replace `~ ~ ~` with the coordinates to spawn the armor stand, ensuring that it is in the correct position as shown.
    - Replace `INSERT_TAG` with the room's corresponding tag.

> It is crucial that the armor stand faces away from the elevator, the blue line denotes the facing direction of the armor stand

```MCFUNCTION
summon minecraft:armor_stand ~ ~ ~ {Tags:["INSERT_TAG","elevator","close"],Invisible:1,Invulnerable:1,Rotation:[180f,0f,0f]}
```

<img src="resources\armor_stand_location.png"></img>

### Give the floor functionality

- Copy `data\rooms\functions\template.mcfunction` and rename it to the room's tag
- In the newly created function do the following:
    - Using the center of the new elevator, find the relative coords from the intermission elevator located at `7, 30, 42`
    - Paste them into the tp command.
    - Change the tag from `INSERT_TAG` to your room's tag

```MCFUNCTION
execute as @e[tag=inside] at @s run tp @s ~ ~ ~

tag @a add INSERT_TAG
```

### Add transition logic

- Under `data\elevator\functions\goto_next_floor.mcfunction` create and insert the following command: 
    - Change the second tag from `INSERT_TAG` to the room's tag
    - Change the placeholder function to the function you created above

```MCFUNCTION
execute as @e[type=armor_stand, tag=selected, tag=INSERT_TAG, sort=nearest] at @s run function rooms:INSERT_ROOM
```

### Add intermission logic

- Under `data\elevator\functions\intermission.mcfunction` create and insert the following command:
    - Change the second tag from `INSERT_TAG` to the room's tag
    - Replace `~ ~ ~` with the <ins>opposite</ins> relative coordinates you used in [Floor Funtionality](#give-the-floor-functionality)

> The `oasis.mcfunction` contains the tp coords ` ~97 ~ ~-266` so the corresponding coords in `intermission.mcfunction` should be `~-97 ~ ~266`

### Create the room selector

> There is an area located on the map where one may enable and disable rooms. For the game to know which rooms to select one must enable it.
- Find an open slot and summon an armor stand with the corresponding command:
    - Change `INSERT_TAG` to the room's tag
    - Change the name text with the room's name to find it later
```MCFUNCTION
summon minecraft:armor_stand ~ ~.5 ~ {Tags:["floor","INSERT_TAG"],CustomName:"{\"text\":\"test\"}",CustomNameVisible:1}
```
- Insert this command into the command block located below the slot you've selected and change the wool from `red` to `green`
- Test that the command works by pressing the button labeled `Respawn Room Area`

<img src="resources\room_area.png"></img>

### Add the new room to the Advancements

- Under `data\elevator\advancements\elevator\quite_the_place.json` add the following trigger entry:
    - Change `INSERT_TAG` to the room's tag
    - Change the predicate from `INSERT_TAG` to the room's tag

```JSON
"INSERT_TAG": {
    "trigger": "minecraft:tick",
    "conditions": {
        "player": [
            {
                "condition": "minecraft:entity_properties",
                "entity": "this",
                "predicate": {
                    "nbt": "{Tags:[\"INSERT_TAG\"]}" 
                }
            }
        ]
    }
}
```

- Add the corresponding requirement to the list
    - Change `INSERT_TAG` to the room's tag

```JSON
[
    "INSERT_TAG"
]
```

> Make sure you format the JSON correctly otherwise it will not appear.

### Finally
- Reload the data pack and you should be good to go!

<img src="resources\credits.png"></img>