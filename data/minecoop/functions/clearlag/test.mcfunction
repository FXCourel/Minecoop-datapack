scoreboard players set sc nbritems 0
execute as @e[type=item] run scoreboard players add sc nbritems 1
scoreboard players set sc clearway 1
execute if score sc nbritems > sc maxitems run function minecoop:clearlag/start
gamerule sendCommandFeedback false