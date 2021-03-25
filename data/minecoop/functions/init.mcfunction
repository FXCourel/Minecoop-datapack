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
execute if score sc maxitems matches ..0 run scoreboard players set sc maxitems 200
scoreboard objectives add countdown dummy
scoreboard objectives add nbritems dummy
scoreboard objectives add clearway dummy
bossbar add count_down [{"text":""}]
bossbar set count_down visible true
bossbar set count_down max 10
bossbar set count_down color red
bossbar set count_down style notched_10
# Spec
scoreboard objectives add spec trigger
# Deaths
scoreboard objectives add death deathCount
scoreboard objectives add xplevel dummy
# Tpa
scoreboard objectives add tpa trigger
scoreboard objectives add id dummy
scoreboard objectives add nbrplayersold dummy
scoreboard objectives add nbrplayersnew dummy
scoreboard objectives add accept trigger
scoreboard objectives add deny trigger
scoreboard objectives add tpacancel trigger
scoreboard objectives add tpastarted dummy
scoreboard players set sc tpastarted 0
scoreboard objectives add tpaasked dummy
scoreboard players set sc tpaasked 0
function minecoop:tpa/id
function minecoop:tpa/reset
# Autorisation manager
scoreboard objectives add datapack_manager trigger
scoreboard objectives add manager dummy
scoreboard objectives add enabledtpa dummy
scoreboard objectives add enabledspec dummy
scoreboard objectives add enabledspawn dummy
scoreboard objectives add enabledclearlag dummy
scoreboard objectives add enabledstatues dummy
scoreboard objectives add op trigger
# Loading end
tellraw @a {"text":">> Minecoop datapack succesfully loaded ! (v6.4)","color":"dark_green"}