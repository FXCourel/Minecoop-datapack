scoreboard players set @s datapack_manager 1
execute unless score sc enabledspawn matches 0.. run scoreboard players set sc enabledspawn 0
scoreboard players reset @a spawn
execute if score sc enabledspawn matches 1 run scoreboard players set sc enabledspawn 2
execute if score sc enabledspawn matches 0 run scoreboard players set sc enabledspawn 1
execute if score sc enabledspawn matches 2 run scoreboard players set sc enabledspawn 0
playsound entity.experience_orb.pickup player @a[scores={datapack_manager=1..}]
function minecoop:manager/menu