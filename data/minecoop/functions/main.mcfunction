execute if score sc enabledclearlag matches 1 run function minecoop:clearlag/tick
execute if score sc enabledspec matches 1 run function minecoop:gm/check
function minecoop:death/tick
execute if score sc enabledtpa matches 1 run function minecoop:tpa/tick
execute if score sc enabledspawn matches 1 run function minecoop:spawn/tick
function minecoop:manager/tick
gamerule sendCommandFeedback true