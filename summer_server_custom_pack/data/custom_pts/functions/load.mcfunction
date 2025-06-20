# load function for point system
# should only ensure scoreboards are created & sidebar is set

# create scoreboards
scoreboard objectives add points dummy {"text": "Points","color":"gold","bold":true}
scoreboard objectives add relic_redeem trigger
scoreboard objectives add levelz_level dummy

# set sidebar
scoreboard objectives setdisplay sidebar points