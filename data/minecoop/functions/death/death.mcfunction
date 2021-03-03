execute store result score sc xplevel run xp query @a[scores={death=1..},limit=1] levels
# Summon en fct de la qtité d'xp
execute at @a[scores={death=1..},limit=1] if score sc xplevel matches 7.. run summon experience_orb ~ ~ ~ {Value:91}
execute at @a[scores={death=1..},limit=1] if score sc xplevel matches 4..6 run summon experience_orb ~ ~ ~ {Value:40}
execute at @a[scores={death=1..},limit=1] if score sc xplevel matches 1..3 run summon experience_orb ~ ~ ~ {Value:7}
xp set @a[scores={death=1..}] 0 points
xp set @a[scores={death=1..}] 0 levels
scoreboard players set @a death 0