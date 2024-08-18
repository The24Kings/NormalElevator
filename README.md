# A Normal Elevator
Based on the popular GMOD map created by <a href="https://www.pixeltailgames.com/elevator/"> PixelTail Games</a> and heavily inspired by <a href=https://www.youtube.com/channel/UCHobjD55wR4c-5bD0AHDcEQ>ThePebblePrince</a>

<img src="resources\elevator_entrance.png"></img>

## Version
<a href="https://www.minecraft.net/en-us/article/minecraft-java-edition-1-21-1">Minecraft 1.21.1</a>

## Map Download
<a href=https://www.mediafire.com/file/9m5l0dupj4ak3tm/Normal_Elevator.zip/file>World Download</a> on Mediafire

---

# Automatically Add New Floors

- Create an elevator in any desired location
    - Note down the coordinates of the `Sea Lantern` block located at the top

<img src="resources\center_location.png"></img>

- Run the automated script `add_floors.py`
    - The script will prompt you for 3 key details
        - Floor name
        - Coordinates of center
        - Expected time to spend on the floor

<img src="resources\add_floor_example.png"></img>

> The above example is of a newly created floor

- The script will give you a command to place into one of the open room selection slots in the `room_area`
    - Enter the command in the desired area and enable it by replacing the `Red Wool` with `Green Wool`
    - Run the function `rooms:reset_rooms`

---

# How to add a floor to a Normal Elevator Manually

> Please use the automated script `add_floor.py`

### Create the room

- Create an elevator in your desired area, making sure to note the center coordinates of the elevator.

### Place the elevator's marker

- Create a new summon command for the new elevator armor stand into `reset_floors.mcfunction`
    - Replace `~ ~ ~` with the coordinates to spawn the armor stand, ensuring that it is in the correct position as shown.
    - Replace `INSERT_TAG` with the room's corresponding tag.

> It is crucial that the armor stand faces away from the elevator, the blue line denotes the facing direction of the armor stand

```MCFUNCTION
summon minecraft:armor_stand ~ ~ ~ {Tags:["INSERT_TAG","elevator","close"],Invisible:1,Invulnerable:1,Rotation:[180f,0f]}
```

<img src="resources\armor_stand_location.png"></img>

### Give the floor functionality

- Copy `data\rooms\functions\template.mcfunction` and rename it to the room's tag
- In the newly created function do the following:
    - Using the center of the new elevator, find the relative coords from the intermission elevator located at <br>`7, 30, 42`
    - Paste them into the tp command.
    - Change the tag from `INSERT_TAG` to your room's tag

- Add a room timer
    - Change `CLOSE_TIME` to the desired room length (in seconds)
    - Change `TP_TIME` to `CLOSE_TIME` + 3s

```MCFUNCTION
execute as @e[tag=inside] at @s run tp @s ~ ~ ~

tag @a add INSERT_TAG

schedule function tasks:close_room_door CLOSE_TIME

schedule function elevator:intermission TP_TIME
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

- Remove the old room's tag
    - Replace `INSERT_TAG` to the room's tag

```MCFUNCTION
execute as @a[tag=inside,tag=INSERT_TAG] at @s run tp @s ~ ~ ~

tag @a remove INSERT_TAG
```

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

## Optional Additions
- Add a room-specific advancement to `data\elevator\advancements\elevator` by copying `data/elevator/advancements/elevator/template.json`
- Add any restart conditions to `data\rooms\functions\refresh_rooms.mcfunction`
    - Room functions are added under `data\rooms\functions`
- Any tasks that need to be frequently executed may be added to `data\tasks\functions`
- Add custom sounds to `data\sounds\functions`

---

### Finally
- Reload the data pack and you should be good to go!

<img src="resources\credits.png"></img>
