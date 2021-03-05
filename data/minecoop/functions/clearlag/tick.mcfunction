scoreboard players enable @a clearlag
scoreboard players enable @a spawn
scoreboard players enable @a[tag=Admin] limit
execute if entity @a[scores={clearlag=1..}] if score sc clearlagstarted matches 0 run scoreboard players set sc clearway 2
execute if entity @a[scores={clearlag=1..}] if score sc clearlagstarted matches 0 run function minecoop:clearlag/start

scoreboard players add sc tick 1
# Pour le clearlag
execute if entity @a[scores={cancel=1..}] if score sc clearlagstarted matches 1 run function minecoop:clearlag/cancel
execute if score sc clearlagstarted matches 1 run bossbar set count_down name [{"score":{"name":"sc","objective":"countdown"}}, " secondes restantes"]
execute if score sc tick matches 20 if score sc clearlagstarted matches 1 run function minecoop:clearlag/countdown
# Quand le clearlag n'est pas en cours
execute if score sc tick matches 20 if score sc clearlagstarted matches 0 run function minecoop:clearlag/test
execute if score sc tick matches 20 run scoreboard players set sc tick 0
# Autres
execute if entity @a[scores={limit=1..}] if score sc itemlimit matches 0 run function minecoop:clearlag/modifylimit
execute if entity @a[scores={spawn=1..}] run execute in minecraft:overworld run tp @a[scores={spawn=1..}] -175.54 64.50 -44.50 90 0
# Fin / Resets
scoreboard players set @a clearlag 0
scoreboard players set @a limit 0
scoreboard players set @a spawn 0
gamerule sendCommandFeedback true