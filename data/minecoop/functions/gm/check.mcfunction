scoreboard players enable @a spec
execute if entity @a[scores={spec=1..}] run function minecoop:gm/change
scoreboard players set @a spec 0