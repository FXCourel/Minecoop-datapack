tellraw @a ["",{"text": ">> ","color": "red"},{"selector":"@a[scores={deny=1..},limit=1]"},{"text": " a rejeté la demande de tpa de ","color": "red"},{"selector":"@a[scores={tpa=11..},limit=1]"}]
scoreboard players reset @a accept
scoreboard players reset @a deny
scoreboard players reset @a tpa
scoreboard players reset @a tpacancel
scoreboard players set sc tpastarted 0
scoreboard players set sc tpaasked 0
scoreboard players enable @a[tag=canseeall] accept
scoreboard players enable @a[tag=canseeall] deny
scoreboard players enable @a[tag=canseeall] tpacancel