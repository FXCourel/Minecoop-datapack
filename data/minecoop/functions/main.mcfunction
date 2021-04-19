function minecoop:manager/tick
execute if score sc enabledclearlag matches 1 run function minecoop:clearlag/tick
execute if score sc enabledspec matches 1 run function minecoop:gm/check
function minecoop:death/tick
execute if score sc enabledtpa matches 1 run function minecoop:tpa/tick
execute if score sc enabledspawn matches 1 run function minecoop:spawn/tick
scoreboard players set sc nbrplayersnew 0
execute as @a run scoreboard players add sc nbrplayersnew 1
execute if score sc nbrplayersnew < sc nbrplayersold if score sc enabledkeepinv matches 1 run scoreboard players add sc sessionid 1
execute if score sc nbrplayersnew < sc nbrplayersold if score sc enabledkeepinv matches 1 run scoreboard players add @a sessionid 1
execute unless score sc nbrplayersnew = sc nbrplayersold if score sc enabledtpa matches 1 run function minecoop:tpa/id
execute if score sc enabledkeepinv matches 1 run function minecoop:keepinv/tick
execute as @a run scoreboard players operation sc nbrplayersold = sc nbrplayersnew
gamerule sendCommandFeedback true