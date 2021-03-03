# Clear lag
scoreboard objectives add clearlag trigger
scoreboard objectives add cancel trigger
scoreboard objectives add spawn trigger
scoreboard objectives add limit trigger
scoreboard objectives add itemlimit dummy
scoreboard players set sc itemlimit 0
scoreboard objectives add clearlagstarted dummy
scoreboard players set sc clearlagstarted 0
scoreboard objectives add tick dummy
scoreboard objectives add maxitems dummy
scoreboard objectives add countdown dummy
scoreboard objectives add nbritems dummy
scoreboard objectives add clearway dummy
bossbar add count_down [{"text":""}]
bossbar set count_down visible true
bossbar set count_down max 10
bossbar set count_down color red
# Spec
scoreboard objectives add spec trigger
# Deaths
scoreboard objectives add death deathCount
scoreboard objectives add xplevel dummy
# Loading end
tellraw @a {"text":">> Minecoop datapack succesfully loaded ! (v4.1)","color":"dark_green"}