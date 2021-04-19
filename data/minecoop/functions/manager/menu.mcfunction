scoreboard players set @s manager 1
tellraw @a[scores={manager=1..}] {"text":" "}
tellraw @a[scores={manager=1..}] {"text":"------------- Datapack manager menu -------------","color":"gold"}
tellraw @a[scores={manager=1..}] {"text":" "}
#
execute if score sc enabledkeepinv matches 2 run tellraw @a[scores={manager=1..}] ["",{"text":"  > Keep Inventory : "},{"text":"Enabled","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function minecoop:manager/togglekeepinv"}}]
execute if score sc enabledkeepinv matches 1 run tellraw @a[scores={manager=1..}] ["",{"text":"  > Keep Inventory : "},{"text":"Disabled","bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function minecoop:manager/togglekeepinv"},"hoverEvent":{"action":"show_text","contents":[{"text":"WITH invulnerability when connecting","color":"yellow"}]}}]
execute unless score sc enabledkeepinv matches 1.. run tellraw @a[scores={manager=1..}] ["",{"text":"  > Keep Inventory : "},{"text":"Disabled","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function minecoop:manager/togglekeepinv"},"hoverEvent":{"action":"show_text","contents":[{"text":"WITHOUT invulnerability when connecting","color":"red"}]}}]
execute if score sc enabledtpa matches 1 run tellraw @a[scores={manager=1..}] ["",{"text":"  > Tpa :                "},{"text":"Enabled","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function minecoop:manager/toggletpa"}}]
execute unless score sc enabledtpa matches 1 run tellraw @a[scores={manager=1..}] ["",{"text":"  > Tpa :                "},{"text":"Disabled","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function minecoop:manager/toggletpa"}}]
execute if score sc enabledspec matches 1 run tellraw @a[scores={manager=1..}] ["",{"text":"  > Spectator :        "},{"text":"Enabled","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function minecoop:manager/togglespec"}}]
execute unless score sc enabledspec matches 1 run tellraw @a[scores={manager=1..}] ["",{"text":"  > Spectator :        "},{"text":"Disabled","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function minecoop:manager/togglespec"}}]
execute if score sc enabledspawn matches 1 run tellraw @a[scores={manager=1..}] ["",{"text":"  > Spawn :             "},{"text":"Enabled","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function minecoop:manager/togglespawn"}}]
execute unless score sc enabledspawn matches 1 run tellraw @a[scores={manager=1..}] ["",{"text":"  > Spawn :             "},{"text":"Disabled","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function minecoop:manager/togglespawn"}}]
execute if score sc enabledclearlag matches 1 run tellraw @a[scores={manager=1..}] ["",{"text":"  > Clear lag :         "},{"text":"Enabled","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function minecoop:manager/toggleclearlag"}}]
execute unless score sc enabledclearlag matches 1 run tellraw @a[scores={manager=1..}] ["",{"text":"  > Clear lag :         "},{"text":"Disabled","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function minecoop:manager/toggleclearlag"}}]
execute if score sc enabledstatues matches 1 run tellraw @a[scores={manager=1..}] ["",{"text":"  > IF / Statues :     "},{"text":"Enabled","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function minecoop:manager/togglestatues"}}]
execute unless score sc enabledstatues matches 1 run tellraw @a[scores={manager=1..}] ["",{"text":"  > IF / Statues :     "},{"text":"Disabled","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function minecoop:manager/togglestatues"}}]
#
tellraw @a[scores={manager=1..}] {"text":" "}
function minecoop:manager/op/opon
scoreboard players reset @a manager
scoreboard players reset @a datapack_manager
gamerule sendCommandFeedback false