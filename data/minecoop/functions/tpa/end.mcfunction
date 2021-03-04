tellraw @a ["",{"text": ">> ","color": "red"},{"selector":"@a[scores={deny=1..},limit=1]"},{"text": " a rejeté la demande de tpa de ","color": "red"},{"selector":"@a[scores={tpa=11..},limit=1]"}]
scoreboard players set @a accept 0
scoreboard players set @a deny 0
scoreboard players set @a tpa 0
scoreboard players set sc tpastarted 0
scoreboard players set sc tpaasked 0
scoreboard players enable @a[tag=canseeall] accept
scoreboard players enable @a[tag=canseeall] deny