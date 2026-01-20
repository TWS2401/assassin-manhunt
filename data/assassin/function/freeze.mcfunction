##as @p[team=Hunters,tag=!frozen]

execute store result score @s AssassinX run data get entity @s Pos[0] 100
execute store result score @s AssassinY run data get entity @s Pos[1] 100
execute store result score @s AssassinZ run data get entity @s Pos[2] 100
execute store result score @s AssassinYaw run data get entity @s Rotation[0] 10
execute store result score @s AssassinPitch run data get entity @s Rotation[1] 10

effect give @s weakness infinite 255 true

tag @s add frozen
