# load function for world spawns & spread players

# set world spawn
setworldspawn 0 100 0

# ensure scoreboards are created
scoreboard objectives add health health
scoreboard objectives add spawn_team trigger
scoreboard objectives add spawn_location trigger
scoreboard objectives add spawn_status dummy