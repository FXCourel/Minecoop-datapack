scoreboard players enable @a[tag=Admin] datapack_manager
execute as @a[scores={datapack_manager=1..}] if entity @a[scores={datapack_manager=1..}] run function minecoop:manager/menu
scoreboard players set @a datapack_manager 0