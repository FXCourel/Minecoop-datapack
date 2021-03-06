scoreboard players set sc tpastarted 1
scoreboard players set @a[scores={tpa=1..2}] tpa 3
tag @a[scores={tpa=3}] add Tpa
tellraw @a[scores={tpa=3}] {"text":">> Tpa : liste des joueurs disponibles","color": "gold"}
execute if entity @a[scores={id=11}] run tellraw @a[scores={tpa=3}] ["",{"text": " > ","color": "dark_aqua"},{"selector":"@a[scores={id=11}]","color": "dark_aqua","clickEvent": {"action":"run_command","value":"/trigger tpa set 11"}}]
execute if entity @a[scores={id=12}] run tellraw @a[scores={tpa=3}] ["",{"text": " > ","color": "dark_aqua"},{"selector":"@a[scores={id=12}]","color": "dark_aqua","clickEvent": {"action":"run_command","value":"/trigger tpa set 12"}}]
execute if entity @a[scores={id=13}] run tellraw @a[scores={tpa=3}] ["",{"text": " > ","color": "dark_aqua"},{"selector":"@a[scores={id=13}]","color": "dark_aqua","clickEvent": {"action":"run_command","value":"/trigger tpa set 13"}}]
execute if entity @a[scores={id=14}] run tellraw @a[scores={tpa=3}] ["",{"text": " > ","color": "dark_aqua"},{"selector":"@a[scores={id=14}]","color": "dark_aqua","clickEvent": {"action":"run_command","value":"/trigger tpa set 14"}}]
execute if entity @a[scores={id=15}] run tellraw @a[scores={tpa=3}] ["",{"text": " > ","color": "dark_aqua"},{"selector":"@a[scores={id=15}]","color": "dark_aqua","clickEvent": {"action":"run_command","value":"/trigger tpa set 15"}}]
execute if entity @a[scores={id=16}] run tellraw @a[scores={tpa=3}] ["",{"text": " > ","color": "dark_aqua"},{"selector":"@a[scores={id=16}]","color": "dark_aqua","clickEvent": {"action":"run_command","value":"/trigger tpa set 16"}}]
execute if entity @a[scores={id=17}] run tellraw @a[scores={tpa=3}] ["",{"text": " > ","color": "dark_aqua"},{"selector":"@a[scores={id=17}]","color": "dark_aqua","clickEvent": {"action":"run_command","value":"/trigger tpa set 17"}}]
execute if entity @a[scores={id=18}] run tellraw @a[scores={tpa=3}] ["",{"text": " > ","color": "dark_aqua"},{"selector":"@a[scores={id=18}]","color": "dark_aqua","clickEvent": {"action":"run_command","value":"/trigger tpa set 18"}}]
scoreboard players reset @a tpa
scoreboard players enable @a[tag=Tpa] tpa
gamerule sendCommandFeedback false