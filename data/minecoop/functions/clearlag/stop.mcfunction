bossbar set count_down players @a[tag=canseeall]
execute if score sc clearlagstarted matches 1 run kill @e[type=item]
execute if score sc clearlagstarted matches 1 run kill @e[type=experience_orb]
execute if score sc clearlagstarted matches 1 run tellraw @a {"text":">> Clear lag effectué !","color":"dark_green"}
scoreboard players set sc clearlagstarted 0
scoreboard players set sc countdown 10
scoreboard players enable @a[tag=canseeall] cancel
gamerule sendCommandFeedback false