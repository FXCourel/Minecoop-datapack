tellraw @a ["",{"text": ">> ","color": "dark_green"},{"selector":"@a[scores={accept=1..},limit=1]"},{"text": " a accepté la demande de tpa de ","color": "dark_green"},{"selector":"@a[scores={tpa=11..},limit=1]"}]
tp @a[scores={tpa=11..}] @a[scores={accept=1..},limit=1]
function minecoop:tpa/reset