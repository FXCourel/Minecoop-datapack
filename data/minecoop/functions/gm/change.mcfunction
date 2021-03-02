gamerule sendCommandFeedback false
gamemode adventure @a[gamemode=survival,scores={spec=1..}]
gamemode survival @a[gamemode=spectator,scores={spec=1..}]
gamemode spectator @a[gamemode=adventure,scores={spec=1..}]
execute if entity @a[gamemode=survival,scores={spec=1..}] run tellraw @a ["",{"text":">> ","color":"gold"},{"selector":"@a[gamemode=survival,scores={spec=1..}]"},{"text":" n'est plus en spectator","color":"gold"}]
execute if entity @a[gamemode=spectator,scores={spec=1..}] run tellraw @a ["",{"text":">> ","color":"gold"},{"selector":"@a[gamemode=spectator,scores={spec=1..}]"},{"text":" est maintenant en spectator","color":"gold"}]