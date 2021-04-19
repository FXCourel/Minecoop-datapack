scoreboard players set @s datapack_manager 1
scoreboard players add sc enabledkeepinv 1
execute if score sc enabledkeepinv matches 3 run scoreboard players set sc enabledkeepinv 0
execute unless score sc enabledkeepinv matches 0.. run scoreboard players add sc enabledkeepinv 1
execute if score sc enabledkeepinv matches 0..1 run gamerule keepInventory false
execute if score sc enabledkeepinv matches 2 run gamerule keepInventory true
playsound entity.experience_orb.pickup player @a[scores={datapack_manager=1..}]
function minecoop:manager/menu