# tick function for spawn location selection

# first check for new players & onboard them
# sets their spawn status to 0 to begin the process
execute as @a unless entity @s[scores={spawn_status=0..}] run scoreboard players set @s spawn_status 0
# enables them to use /trigger to set their team
execute as @a unless entity @s[scores={spawn_team=1..}] run scoreboard players enable @s spawn_team
# forces players to 0, 100, 0 regardless of how far away they spawn
execute as @a[scores={spawn_status=0..1}] run teleport @s 0 100 0
# give players who just spawned invisibility (temporary)
execute as @a[scores={spawn_status=0..1}] run effect give @s minecraft:invisibility infinite 1 false
# give players who just spawned water breathing
execute as @a[scores={spawn_status=0..1}] run effect give @s minecraft:water_breathing infinite 1 false

# next update all players in limbo
# allow these players to use /trigger to set their spawn location
execute as @a[scores={spawn_team=1..}] unless entity @s[scores={spawn_location=1..}] run scoreboard players enable @s spawn_location
# update these players based on their spawn
execute run function spawns:loc_set/ls_spawn1
execute run function spawns:loc_set/ls_spawn2
execute run function spawns:loc_set/ls_spawn3
execute run function spawns:loc_set/ls_spawn4
execute run function spawns:loc_set/ls_spawn5
execute run function spawns:loc_set/ls_spawn6
execute run function spawns:loc_set/ls_spawn7
execute run function spawns:loc_set/ls_spawn8
execute run function spawns:loc_set/ls_spawn9
execute run function spawns:loc_set/ls_spawn10
execute run function spawns:loc_set/ls_spawn11
execute run function spawns:loc_set/ls_spawn12
execute run function spawns:loc_set/ls_spawn13
execute run function spawns:loc_set/ls_spawn14
execute run function spawns:loc_set/ls_spawn15
execute run function spawns:loc_set/ls_spawn16
execute run function spawns:loc_set/ls_spawn17
execute run function spawns:loc_set/ls_spawn18
execute run function spawns:loc_set/ls_spawn19