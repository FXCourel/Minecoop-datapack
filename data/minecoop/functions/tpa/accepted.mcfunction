tellraw @a ["",{"text": ">> ","color": "dark_green"},{"selector":"@a[scores={accept=1..},limit=1]"},{"text": " a accepté la demande de tpa de ","color": "dark_green"},{"selector":"@a[scores={tpa=11..},limit=1]"}]
tp @a[scores={tpa=11..}] @a[scores={accept=1..},limit=1]
scoreboard players reset @a accept
scoreboard players reset @a deny
scoreboard players reset @a tpa
scoreboard players set sc tpastarted 0
scoreboard players set sc tpaasked 0
scoreboard players enable @a[tag=canseeall] accept
scoreboard players enable @a[tag=canseeall] deny