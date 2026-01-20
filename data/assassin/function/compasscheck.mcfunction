# execute store result score true TrackerInstalled run datapack disable "file/TrackerCompass"
# execute store result score true TrackerInstalled run datapack enable "file/TrackerCompass"

# execute if score true TrackerInstalled matches 1.. run return 1

execute if score y_mode TrackerSettings matches 0.. run return 1

tellraw @a [{"text":"[AssassinHunter] The Tracker Compass datapack must be installed!","color":"red"}]

datapack disable "file/AssassinHunter"

return fail
