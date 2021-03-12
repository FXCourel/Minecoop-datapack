scoreboard players set @s datapack_manager 1
execute unless score sc enabledspec matches 0.. run scoreboard players set sc enabledspec 0
scoreboard players reset @a spec
execute if score sc enabledspec matches 1 run gamemode survival @a[gamemode=spectator]
execute if score sc enabledspec matches 1 run scoreboard players set sc enabledspec 2
execute if score sc enabledspec matches 0 run scoreboard players set sc enabledspec 1
execute if score sc enabledspec matches 2 run scoreboard players set sc enabledspec 0
playsound entity.experience_orb.pickup player @a[scores={datapack_manager=1..}]
function minecoop:manager/menu