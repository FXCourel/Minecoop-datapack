scoreboard players set @s datapack_manager 1
execute unless score sc enabledtpa matches 0.. run scoreboard players set sc enabledtpa 0
function minecoop:tpa/reset
execute if score sc enabledtpa matches 1 run scoreboard players set sc enabledtpa 2
execute if score sc enabledtpa matches 0 run scoreboard players set sc enabledtpa 1
execute if score sc enabledtpa matches 2 run scoreboard players set sc enabledtpa 0
playsound entity.experience_orb.pickup player @a[scores={datapack_manager=1..}]
function minecoop:manager/menu