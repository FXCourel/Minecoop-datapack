scoreboard players set @s datapack_manager 1
execute unless score sc enabledclearlag matches 0.. run scoreboard players set sc enabledclearlag 0
execute if score sc clearlagstarted matches 1 run function minecoop:clearlag/cancel
scoreboard players reset @a clearlag
scoreboard players reset @a limit
execute if score sc enabledclearlag matches 1 run scoreboard players set sc enabledclearlag 2
execute if score sc enabledclearlag matches 0 run scoreboard players set sc enabledclearlag 1
execute if score sc enabledclearlag matches 2 run scoreboard players set sc enabledclearlag 0
playsound entity.experience_orb.pickup player @a[scores={datapack_manager=1..}]
function minecoop:manager/menu