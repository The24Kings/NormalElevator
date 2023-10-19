import json

def main():
    # File paths
    RESET_FLOORS = "data\\elevator\\functions\\reset_floors.mcfunction"
    INTERMISSION = "data\\elevator\\functions\\intermission.mcfunction"
    NEXT_FLOOR = "data\\elevator\\functions\\goto_next_floor.mcfunction"
    FLOOR_TEMPLATE = "data\\rooms\\functions\\template.mcfunction"

    ADVANCEMENT = "data\elevator\\advancements\\elevator\\quite_the_place.json"

    # Constants
    INTER_X = 7
    INTER_Y = 25 # Sea Lantern Y - 5
    INTER_Z = 42

    DIRECTIONS = {
        "north": 180,
        "south": 0,
        "east": -90,
        "west": 90
    }

    confirm = "n"
    
    while confirm != "y":
        # Prompt user for floor name
        floor_name = input("Enter floor name (Must be snake_case): ")
        floor_name.lower()

        # Prompt user for Coords
        """
            Armor stand located at: Direction +- 5 blocks from center, y - 1
            TP Coords: Center_X - INTER_X, Center_Y - INTER_Y, Center_Z - INTER_Z
            Example:
                Name    = offensive_post
                Center  = 72, 30, 42 
                Facing  = North
                ------------
                TP coords   = ~65 ~ ~
                Armor stand = 72, 29, 37, 180, 0
        """
        print(f"\nEnter sea lantern (center) coords for floor {floor_name}: ")
        x = int(input("Enter x coord: "))
        y = int(input("Enter y coord: "))
        z = int(input("Enter z coord: "))

        # Prompt user for direction
        """
            North - negative Z -  180deg
            South - positive Z -  0deg
            East  - positive X - -90deg
            West  - negative X -  90deg
        """
        direction = input("\nEnter direction (north, south, east, west): ")
        direction.lower()

        # Prompt user for room length
        time = int(input("\nEnter room length (in seconds): "))

        print(f"\nFloor name: {floor_name}")
        print(f"Coords: {x}, {y}, {z}")
        print(f"Direction: {direction}")
        print(f"Time: {time} seconds")

        # Prompt user to confirm
        confirm = input("\nConfirm? (y/n): ")

    relative_x = x - INTER_X
    relative_y = y - INTER_Y - 5
    relative_z = z - INTER_Z

    armor_stand_x = x
    armor_stand_y = y - 1
    armor_stand_z = z

    # Print out Datapack Info
    print(f"Relative coords: ~{relative_x}, ~{relative_y}, ~{relative_z}")

    # Adjust coords for armor stand
    match direction:
        case "north":
            armor_stand_z -= 5
        case "south":
            armor_stand_z += 5
        case "east":
            armor_stand_x += 5
        case "west":
            armor_stand_x -= 5
        case _:
            print("Invalid direction")
            exit()

    print(f"Armor stand coords: {armor_stand_x}, {armor_stand_y}, {armor_stand_z}, {DIRECTIONS[direction]}, 0")

    # Print out Commands
    print("\nCommands:")
    print("reset_floors")
    print('summon minecraft:armor_stand ' + f'{armor_stand_x} {armor_stand_y} {armor_stand_z}' + ' {Tags:[' + f'"{floor_name}"' + ',"elevator","close"],Invisible:1,Invulnerable:1,Rotation:[' + f'{DIRECTIONS[direction]}f' + ',0f,0f]}')
    
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

if __name__ == '__main__':
    main()