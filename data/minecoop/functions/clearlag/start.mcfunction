execute if score sc clearway matches 1 run tellraw @a {"text":">> Beaucoup d'entités détectées ! Clear lag démarré !","color":"red"}
execute if score sc clearway matches 2 run tellraw @a ["",{"text":">> Clear lag démarré sous la demande de ","color":"red"},{"selector":"@a[scores={clearlag=1..}]","color":"gold"},{"text":" !","color":"red"}]
scoreboard players set sc countdown 10
scoreboard players set sc tick 0
scoreboard players set sc clearlagstarted 1
bossbar set count_down players @a
bossbar set count_down value 10
scoreboard players enable @a cancel
gamerule sendCommandFeedback false