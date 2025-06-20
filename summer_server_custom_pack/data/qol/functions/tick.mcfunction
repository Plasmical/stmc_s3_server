# tick function for all quality of life functions

# onboarding players to the spawn radius system
execute as @a unless entity @s[scores={outside_spawn=0..}] run scoreboard players set @s outside_spawn 0
execute as @a unless entity @s[scores={outside_border=0..}] run scoreboard players set @s outside_border 0

# spawn radius update
execute run function qol:spawnradius
execute run function qol:worldborder