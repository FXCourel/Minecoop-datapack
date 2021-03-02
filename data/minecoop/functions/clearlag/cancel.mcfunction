tellraw @a ["",{"text":">> Clear lag annulé manuellement par ","color":"red"},{"selector":"@a[scores={cancel=1..}]","color":"gold"},{"text":" ! Prochaine tentative dans 30 secondes","color":"red"}]
scoreboard players set sc clearlagstarted 0
scoreboard players set sc tick -600
function minecoop:clearlag/stop
gamerule sendCommandFeedback false