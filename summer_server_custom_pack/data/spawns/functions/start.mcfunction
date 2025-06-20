# this function begins the world spawn process, spreading players, giving effects, and beginning a timer

# update world status
execute run scoreboard players set dev world_status 1
execute run scoreboard players set dev dummy_timer 0

# expand worldborder
worldborder set 1000000

# force survival mode
gamemode survival @a

# reset spawn effects
effect clear @a

# ensure cycles are reset
gamerule playersSleepingPercentage 20
gamerule doDaylightCycle true
gamerule doWeatherCycle true

time set day
weather clear

# give effects to players
effect give @a absorption 3600 8 false
effect give @a saturation 30 1 false

# SPREAD PLAYERS
execute run function spawns:spreadplayers/sp_spawn1
execute run function spawns:spreadplayers/sp_spawn2
execute run function spawns:spreadplayers/sp_spawn3
execute run function spawns:spreadplayers/sp_spawn4
execute run function spawns:spreadplayers/sp_spawn5
execute run function spawns:spreadplayers/sp_spawn6
execute run function spawns:spreadplayers/sp_spawn7
execute run function spawns:spreadplayers/sp_spawn8
execute run function spawns:spreadplayers/sp_spawn9
execute run function spawns:spreadplayers/sp_spawn10
execute run function spawns:spreadplayers/sp_spawn11
execute run function spawns:spreadplayers/sp_spawn12
execute run function spawns:spreadplayers/sp_spawn13
execute run function spawns:spreadplayers/sp_spawn14
execute run function spawns:spreadplayers/sp_spawn15
execute run function spawns:spreadplayers/sp_spawn16
execute run function spawns:spreadplayers/sp_spawn17
execute run function spawns:spreadplayers/sp_spawn18
execute run function spawns:spreadplayers/sp_spawn19