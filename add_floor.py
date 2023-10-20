import json
import shutil

def main():
    # File paths
    RESET_FLOORS = "data\\elevator\\functions\\reset_floors.mcfunction"
    INTERMISSION = "data\\elevator\\functions\\intermission.mcfunction"
    NEXT_FLOOR = "data\\elevator\\functions\\goto_next_floor.mcfunction"
    FLOOR_TEMPLATE = "data\\rooms\\functions\\template.mcfunction"

    ADVANCEMENT = "data\\elevator\\advancements\\elevator\\quite_the_place.json"

    # Constants
    INTER_X = 7
    INTER_Y = 25 # Sea Lantern Y - 5
    INTER_Z = 42

    confirm = "n"
    
    while confirm != "y":
        # Prompt user for floor name
        floor_name = input("Enter floor name (Must be snake_case): ")
        floor_name.lower()

        # Prompt user for Coords
        print(f"\nEnter sea lantern (center) coords for floor {floor_name}: ")
        x = int(input("Enter x coord: "))
        y = int(input("Enter y coord: "))
        z = int(input("Enter z coord: "))

        # Prompt user for room length
        time = int(input("\nEnter room length (in seconds): "))

        print(f"\nFloor name: {floor_name}")
        print(f"Coords: {x}, {y}, {z}")
        print(f"Time: {time} seconds")

        # Prompt user to confirm
        confirm = input("\nConfirm? (y/n): ")

    relative_x = x - INTER_X
    relative_y = y - INTER_Y - 5
    relative_z = z - INTER_Z

    armor_stand_x = x
    armor_stand_y = y - 1
    armor_stand_z = z - 5

    # Print out Datapack Info
    print(f"Relative coords: ~{relative_x}, ~{relative_y}, ~{relative_z}")
    print(f"Armor stand coords: {armor_stand_x}, {armor_stand_y}, {armor_stand_z}, 180, 0")

    """
    # Print out Commands
    print("\nCommands:")
    print("reset_floors")
    print('summon minecraft:armor_stand ' + f'{armor_stand_x} {armor_stand_y} {armor_stand_z}' + ' {Tags:[' + f'"{floor_name}"' + ',"elevator","close"],Invisible:1,Invulnerable:1,Rotation:[180f,0f,0f]}')
    
    print("\ngoto_next_floor")
    print('execute as @e[type=armor_stand, tag=selected, tag=' + f'{floor_name}' + ', sort=nearest] at @s run function rooms:' + f'{floor_name}')

    print("\nintermission")
    print('execute as @a[tag=inside,tag=' + f'{floor_name}' + '] at @s run tp @s ' + f'~{relative_x * -1} ~{relative_y * -1} ~{relative_z * -1}')

    print(f"\n{floor_name}.mcfunction")
    print('execute as @a[tag=inside] at @s run tp @s ' + f'~{relative_x} ~{relative_y} ~{relative_z}')
    print('tag @a add ' + f'{floor_name}')
    print('schedule function tasks:close_room_door ' + f'{time}s')
    print('schedule function elevator:intermission ' + f'{time + 3}s')
    
    print("\nRoom Selector")
    print('summon minecraft:armor_stand ~ ~.5 ~ {Tags:["floor","' + f'{floor_name}' + '"],CustomName:"{\\"text\\":\\"' + f'{floor_name}' + '\\"}",CustomNameVisible:1}')

    print("\nAdvancement")
    print('"' + f'{floor_name}' + '": {"trigger": "minecraft:tick","conditions": {"player": [{"condition": "minecraft:entity_properties","entity": "this","predicate": {"nbt": "{Tags:[\\"' + f'{floor_name}' + '\\"]}"}}]}}')
    print('["' + f'{floor_name}' + '"]')
    """
    # Write to RESET_FLOORS
    with open(RESET_FLOORS, "r") as f:
        contents = f.readlines()
        print(f"\nWriting to {RESET_FLOORS}")

    # Iterate over all lines
    for line in contents:
        if not "#Floor Elevators" in line: # Find start of summons
            continue

        for insert in range(contents.index(line), len(contents) - 1):
            if contents[insert].strip(): # If line is not empty
                continue

            contents.insert(insert, 'summon minecraft:armor_stand ' + f'{armor_stand_x} {armor_stand_y} {armor_stand_z}' + ' {Tags:[' + f'"{floor_name}"' + ',"elevator","close"],Invisible:1,Invulnerable:1,Rotation:[180f,0f,0f]}' + '\n')
            break

    with open(RESET_FLOORS, "w") as f:
        f.writelines(contents)

    # Write to NEXT_FLOOR
    with open(NEXT_FLOOR, "r") as f:
        contents = f.readlines()
        print(f"\nWriting to {NEXT_FLOOR}")

    # Iterate over all lines
    for line in contents:
        if not "#Check each room if" in line:
            continue

        for insert in range(contents.index(line), len(contents) - 1):
            if contents[insert].strip():
                continue

            contents.insert(insert, 'execute as @e[type=armor_stand, tag=selected, tag=' + f'{floor_name}' + ', sort=nearest] at @s run function rooms:' + f'{floor_name}' + '\n')
            break

    with open(NEXT_FLOOR, "w") as f:
        f.writelines(contents)

    # Write to INTERMISSION
    with open(INTERMISSION, "r") as f:
        contents = f.readlines()
        print(f"\nWriting to {INTERMISSION}")

    # Iterate over all lines
    for line in contents:
        if not "#If player has tag" in line: # Find start of section
            continue

        for insert in range(contents.index(line), len(contents) - 1):
            if contents[insert].strip(): # If line is not empty
                continue

            contents.insert(insert, 'execute as @a[tag=inside,tag=' + f'{floor_name}' + '] at @s run tp @s ' + f'~{relative_x * -1} ~{relative_y * -1} ~{relative_z * -1}' + '\n')
            break

    for line in contents:
        if not "#Remove all room" in line:
            continue

        for insert in range(contents.index(line), len(contents) - 1):
            if contents[insert].strip():
                continue

            contents.insert(insert, 'tag @a remove ' + f'{floor_name}' + '\n')
            break

    with open(INTERMISSION, "w") as f:
        f.writelines(contents)

    # Copy FLOOR_TEMPLATE to NEW_FLOOR
    NEW_FLOOR = shutil.copy(FLOOR_TEMPLATE, f"data\\rooms\\functions\\{floor_name}.mcfunction")

    # Write to NEW_FLOOR
    # Line 2 - execute as @a[tag=inside] at @s run tp @s ~<x> ~<y> ~<z>
    # Line 8 - tag @a add <floor_name>
    # Line 14 - schedule function tasks:close_room_door <time>s
    # Line 17 - schedule function elevator:intermission <time + 3>s

    with open(NEW_FLOOR, "r") as f:
        contents = f.readlines()
        print(f"\nWriting to {NEW_FLOOR}")

    # Iterate over all lines
    for index, line in enumerate(contents):
        match index:
            case 2:
                contents[index - 1] = 'execute as @a[tag=inside] at @s run tp @s ' + f'~{relative_x} ~{relative_y} ~{relative_z}' + '\n'
            case 8:
                contents[index - 1] = 'tag @a add ' + f'{floor_name}' + '\n'
            case 14:
                contents[index - 1] = 'schedule function tasks:close_room_door ' + f'{time}s' + '\n'
            case 17:
                contents[index - 1] = 'schedule function elevator:intermission ' + f'{time + 3}s' + '\n'
            case _:
                continue

    with open(NEW_FLOOR, "w") as f:
        f.writelines(contents)

    # Write to ADVANCEMENT
    with open(ADVANCEMENT, "r") as f:
        contents = json.load(f)
        print(f"\nWriting to {ADVANCEMENT}")

    contents["criteria"][floor_name] = {"trigger": "minecraft:tick","conditions": {"player": [{"condition": "minecraft:entity_properties","entity": "this","predicate": {"nbt": "{Tags:[\"" + f"{floor_name}" + "\"]}"}}]}}
    contents["requirements"].append(floor_name)

    with open(ADVANCEMENT, "w") as f:
        json.dump(contents, f, indent=4)

    print("\nPlease add this command to the 'Room Selector' area:")
    print('summon minecraft:armor_stand ~ ~.5 ~ {Tags:["floor","' + f'{floor_name}' + '"],CustomName:"{\\"text\\":\\"' + f'{floor_name}' + '\\"}",CustomNameVisible:1}')

if __name__ == '__main__':
    main()