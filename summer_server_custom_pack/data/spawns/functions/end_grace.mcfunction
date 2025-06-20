# this function ends the grace period for players

# update world status
scoreboard players set dev world_status 2
scoreboard players set dev dummy_timer 0

# clear player effects
effect clear @a

# announce update
execute run title @a actionbar {"text":"Grace period has ended","color":"red","bold":true}