execute as @a[team=Runners] unless function assassin:ray/check run function assassin:unfreeze

execute as @a[team=Hunters,tag=frozen] run function assassin:freezetick

execute as @a[team=Runners] store success score @s Assassinated on attacker if entity @s[team=Hunters,tag=!frozen,distance=..5]
execute as @a[team=Runners,scores={Assassinated=1..}] run kill @s

scoreboard players reset @a[team=Runners] Assassinated
