# TEST
# particle flame ~ ~ ~ 0 0 0 0 1 force
# particle flame ^0.7 ^ ^ 0 0 0 0 1 force
# particle flame ^-0.7 ^ ^ 0 0 0 0 1 force
# particle flame ^ ^0.7 ^ 0 0 0 0 1 force
# particle flame ^ ^-0.7 ^ 0 0 0 0 1 force

# Check for collisions with players (account for volume selector expanding in positive x and z axis)
execute as @s[y_rotation=-135..45] positioned ~-1 ~ ~-1 if entity @p[team=Hunters,dy=0] run tag @s add hit_player
execute as @s[y_rotation=-180..-136] if entity @p[team=Hunters,dy=0] run tag @s add hit_player
execute as @s[y_rotation=46..180] if entity @p[team=Hunters,dy=0] run tag @s add hit_player

# Check for collisions with blocks
execute unless block ~ ~ ~ #assassin:ray_permeable run tag @s add hit_block

execute as @s[tag=!hit_block] unless block ^0.7 ^ ^ #assassin:ray_permeable run scoreboard players add @s RayHitL 1
execute as @s[tag=!hit_block] unless block ^-0.7 ^ ^ #assassin:ray_permeable run scoreboard players add @s RayHitR 1
execute as @s[tag=!hit_block] unless block ^ ^0.7 ^ #assassin:ray_permeable run scoreboard players add @s RayHitU 1
execute as @s[tag=!hit_block] unless block ^ ^-0.7 ^ #assassin:ray_permeable run scoreboard players add @s RayHitD 1

# Check against previous block hits
execute as @s[tag=!hit_block] if score @s RayHitL matches 1.. if score @s RayHitR matches 1.. run tag @s add hit_block_check
execute as @s[tag=!hit_block,tag=!hit_block_check] if score @s RayHitR matches 1.. if score @s RayHitL matches 1.. run tag @s add hit_block_check
execute as @s[tag=!hit_block,tag=!hit_block_check] if score @s RayHitU matches 1.. if score @s RayHitD matches 1.. run tag @s add hit_block_check
execute as @s[tag=!hit_block,tag=!hit_block_check] if score @s RayHitD matches 1.. if score @s RayHitU matches 1.. run tag @s add hit_block_check

# Remove previous raycast history
scoreboard players remove @s RayHitL 1
scoreboard players remove @s RayHitR 1
scoreboard players remove @s RayHitU 1
scoreboard players remove @s RayHitD 1

# Keep block hitting scores above 0
execute if score @s RayHitL matches ..0 run scoreboard players reset @s RayHitL
execute if score @s RayHitR matches ..0 run scoreboard players reset @s RayHitR
execute if score @s RayHitU matches ..0 run scoreboard players reset @s RayHitU
execute if score @s RayHitD matches ..0 run scoreboard players reset @s RayHitD

# Decrease the number of steps remaining
scoreboard players remove @s RaycastSteps 1

# Recurse until we hit something or run out of steps
execute as @s[tag=!hit_player,tag=!hit_block,tag=!hit_block_check,scores={RaycastSteps=1..}] positioned ^ ^ ^0.5 run function assassin:ray/move

# If player was hit
execute if entity @s[tag=hit_player,tag=!hit_block,tag=!hit_block_check] as @p[team=Hunters,tag=!frozen] run function assassin:freeze

execute as @s[tag=hit_player,tag=!hit_block,tag=!hit_block_check] run particle dust{color:[1,0,0],scale:0.2} ~ ~ ~ 0 0 0 0 1 force
