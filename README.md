# Assassin Manhunt
A Minecraft datapack that recreates the "[Speedrunner vs Assassin](https://youtu.be/ZfeNh8E3O4c)" videos by [Dream](https://www.youtube.com/@dream).  
Using the [Tracker Compass](https://github.com/TWS2401/tracker-compass) datapack is not required, but strongly recommended.

## Rules
Here are the rules of an Assassin Manhunt:
- Assassins can kill speedrunners in one hit
- Speedrunners can freeze assassins in place by looking at them
- When a speedrunner is looking at an assassin, neither of them can hit each other
- Using bows and other projectiles on each other are not allowed (but due to the limitations of datapacks this isn't enforced)

## Installation
- Download [latest release](https://github.com/TWS2401/assassin-manhunt/releases)
- Locate your world's datapack folder (`.minecraft/saves/[your_world_name]/datapacks`)
- Place the datapack into the datapack folder
- Make sure the datapack is enabled by using `/datapack list`. If it isn't, enable it with `/datapack enable "file/assassin-manhunt-(version_number).zip"`

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
To give the assassins their compasses, use:
```
/function tracker:start
```

More information about the compasses can be found [here](https://github.com/TWS2401/tracker-compass/blob/main/README.md).

## Attribution
This datapack's icon uses [Twemoji](https://github.com/jdecked/twemoji) assets, which are licensed under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/).
