scoreboard players set @s datapack_manager 1
execute unless score sc enabledspec matches 0.. run scoreboard players set sc enabledspec 0
execute if score sc enabledstatues matches 1 run function armor_statues:uninstall
execute unless score sc enabledstatues matches 1 run function armor_statues:load
execute if score sc enabledstatues matches 1 run scoreboard objectives remove if_invisible
execute unless score sc enabledstatues matches 1 run scoreboard players set sc enabledstatues 2
execute if score sc enabledstatues matches 1 run scoreboard players set sc enabledstatues 0
execute if score sc enabledstatues matches 2 run scoreboard players set sc enabledstatues 1
playsound entity.experience_orb.pickup player @a[scores={datapack_manager=1..}]
function minecoop:manager/menu