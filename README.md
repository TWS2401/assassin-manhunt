# Assassin Manhunt
A Minecraft datapack that recreates the "[Speedrunner vs Assassin](https://youtu.be/ZfeNh8E3O4c)" videos by [Dream](https://www.youtube.com/@dream).  
Assassins can kill the speedrunners in one hit, but speedrunners can freeze assassins in place just by looking at them.

Using the [Tracker Compass](https://github.com/TWS2401/tracker-compass) datapack is not required, but strongly recommended.

## Installation
- Download [latest release](https://github.com/TWS2401/assassin-manhunt/releases)
- Locate your world's datapack folder (`.minecraft/saves/[your_world_name]/datapacks`)
- Place the datapack into the datapack folder
- Make sure the datapack is enabled by using `/datapack list`. If it isn't, enable it with `/datapack enable "file/assassin-manhunt_(version_number).zip"`

## How to Use
To set the assassins, use:
```
/team join Hunters player_name
```

To set the speedrunners, use:
```
/team join Runners player_name
```

(If using the Tracker Compass datapack)  
To start the game and give the assassins their compasses, use:
```
/function tracker:start
```

More information about the compasses can be found [here](https://github.com/TWS2401/tracker-compass/blob/main/README.md).

## Attribution
This datapack's icon uses [Twemoji](https://github.com/jdecked/twemoji) assets, which are licensed under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/).
