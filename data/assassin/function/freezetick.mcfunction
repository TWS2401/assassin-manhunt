##as @a[team=Hunters,tag=frozen]

execute store result storage assassin:freeze_pos x double 0.01 run scoreboard players get @s AssassinX
execute store result storage assassin:freeze_pos y double 0.01 run scoreboard players get @s AssassinY
execute store result storage assassin:freeze_pos z double 0.01 run scoreboard players get @s AssassinZ
execute store result storage assassin:freeze_pos yaw double 0.1 run scoreboard players get @s AssassinYaw
execute store result storage assassin:freeze_pos pitch double 0.1 run scoreboard players get @s AssassinPitch

function assassin:freezetp with storage assassin:freeze_pos
