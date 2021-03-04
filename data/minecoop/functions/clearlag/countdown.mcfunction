execute if score sc countdown matches 10 run tellraw @a ["",{"text":">> Les items seront détruits dans ","color":"white"},{"text":"10","color":"red"},{"text":" secondes ! ","color":"white"},{"text":"[Cancel]","color":"red","clickEvent":{"action":"run_command","value":"/trigger cancel set 1"}}]
execute if score sc countdown matches 5 run tellraw @a ["",{"text":">> Les items seront détruits dans ","color":"white"},{"text":"5","color":"red"},{"text":" secondes !  ","color":"white"},{"text":"[Cancel]","color":"red","clickEvent":{"action":"run_command","value":"/trigger cancel set 1"}}]
execute if score sc countdown matches 2 if score sc clearlagstarted matches 1 run effect give @a minecraft:mining_fatigue 2 255 true
execute if score sc countdown matches 2 if score sc clearlagstarted matches 1 run effect give @a minecraft:resistance 2 255 true
execute if score sc countdown matches 0 run function minecoop:clearlag/stop
scoreboard players remove sc countdown 1
execute store result bossbar minecraft:count_down value run scoreboard players get sc countdown
gamerule sendCommandFeedback false