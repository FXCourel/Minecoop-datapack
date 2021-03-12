scoreboard players enable @a spawn
execute if score sc enabledspawn matches 1 if entity @a[scores={spawn=1..}] run execute in minecraft:overworld run tp @a[scores={spawn=1..}] -175.54 64.50 -44.50 90 0
scoreboard players set @a spawn 0