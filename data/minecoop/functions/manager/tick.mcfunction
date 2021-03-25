scoreboard players enable @a[tag=Admin] datapack_manager
execute as @a[scores={datapack_manager=1..}] if entity @a[scores={datapack_manager=1..}] run function minecoop:manager/menu
execute as @a[scores={op=1..}] if entity @a[scores={op=1..}] run function minecoop:manager/op/optoogle
scoreboard players set @a datapack_manager 0