tellraw @a[scores={itemlimit=1..}] {"text":""}
tellraw @a[scores={itemlimit=1..}] {"text":""}
tellraw @a[scores={itemlimit=1..}] {"text":""}
tellraw @a ["",{"text":">> Nouvelle limite d'items fixée à "},{"score":{"name":"sc","objective":"maxitems"},"color":"gold"},{"text":" !"}]
scoreboard players set @a itemlimit 0
gamerule sendCommandFeedback false