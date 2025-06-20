# load function for dungeon/relic features

# ensure scoreboards are created
scoreboard objectives add relic_defense_1 dummy
scoreboard objectives add relic_defense_2 dummy
scoreboard objectives add relic_strength_1 dummy
scoreboard objectives add relic_strength_2 dummy

# force all active scoreboards to 0
scoreboard players set @a relic_defense_1 0
scoreboard players set @a relic_defense_2 0
scoreboard players set @a relic_strength_1 0
scoreboard players set @a relic_strength_2 0