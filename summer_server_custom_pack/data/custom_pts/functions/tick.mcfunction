# tick function for points

# performs three functions:
# 1. checks if players choose to redeem relics
# 2. checks for players who have completed weekly challenges
# 3. updates players based on their LevelZ level

# quick check to make sure all players have at minimum 0 points
execute as @a unless entity @s[scores={points=0..}] run scoreboard players set @s points 0

# <===== REDEEM RELICS =====>

# check if players choose to redeem relics
scoreboard players enable @a relic_redeem

execute as @a as @s[scores={relic_redeem=1..,relic_defense_1=1..}] run advancement grant @s only custom_pts:defense_relic
execute as @a as @s[scores={relic_redeem=1..,relic_defense_1=1..}] run tellraw @a ["",{"selector":"@s","bold":true,"color":"light_purple"},{"text":" has redeemed the ","color":"gray"},{"text":"Relic of Defense","bold":true,"color":"red"},{"text":"!","color":"gray"}]
execute as @a as @s[scores={relic_redeem=1..,relic_defense_1=1..}] run tellraw @s {"text":"+50 points!","color":"yellow"}
execute as @a as @s[scores={relic_redeem=1..,relic_defense_1=1..}] run clear @s cyan_dye{display:{Name:'{"text":"Relic of Defense","color":"gray","bold":true,"underlined":true}'}}

execute as @a as @s[scores={relic_redeem=1..,relic_strength_1=1..}] run advancement grant @s only custom_pts:strength_relic
execute as @a as @s[scores={relic_redeem=1..,relic_strength_1=1..}] run tellraw @a ["",{"selector":"@s","bold":true,"color":"light_purple"},{"text":" has redeemed the ","color":"gray"},{"text":"Relic of Strength","bold":true,"color":"red"},{"text":"!","color":"gray"}]
execute as @a as @s[scores={relic_redeem=1..,relic_strength_1=1..}] run tellraw @s {"text":"+50 points!","color":"yellow"}
execute as @a as @s[scores={relic_redeem=1..,relic_strength_1=1..}] run clear @s orange_dye{display:{Name:'{"text":"Relic of Strength","color":"red","bold":true,"underlined":true}'}}

execute as @a as @s[scores={relic_redeem=1..,relic_defense_2=1..}] run advancement grant @s only custom_pts:defense_two_relic
execute as @a as @s[scores={relic_redeem=1..,relic_defense_2=1..}] run tellraw @a ["",{"selector":"@s","bold":true,"color":"light_purple"},{"text":" has redeemed the ","color":"gray"},{"text":"Relic of Immense Defense","bold":true,"color":"red"},{"text":"!","color":"gray"}]
execute as @a as @s[scores={relic_redeem=1..,relic_defense_2=1..}] run tellraw @s {"text":"+50 points!","color":"yellow"}
execute as @a as @s[scores={relic_redeem=1..,relic_defense_2=1..}] run clear @s blue_dye{display:{Name:'{"text":"Relic of Immense Defense","color":"blue","bold":true,"underlined":true}'}}

execute as @a as @s[scores={relic_redeem=1..,relic_strength_2=1..}] run advancement grant @s only custom_pts:strength_two_relic
execute as @a as @s[scores={relic_redeem=1..,relic_strength_2=1..}] run tellraw @a ["",{"selector":"@s","bold":true,"color":"light_purple"},{"text":" has redeemed the ","color":"gray"},{"text":"Relic of Immense Strength","bold":true,"color":"red"},{"text":"!","color":"gray"}]
execute as @a as @s[scores={relic_redeem=1..,relic_strength_2=1..}] run tellraw @s {"text":"+50 points!","color":"yellow"}
execute as @a as @s[scores={relic_redeem=1..,relic_strength_2=1..}] run clear @s red_dye{display:{Name:'{"text":"Relic of Immense Strength","color":"dark_red","bold":true,"underlined":true}'}}

execute as @a run scoreboard players set @s relic_redeem 0

# <===== WEEKLY CHALLENGES =====>

# week 1
# obtain poison potion effect
execute as @a unless entity @s[advancements={custom_pts:weekly_challenge_one=true}] as @s[nbt={ActiveEffects:[{Id: 19}]}] run advancement grant @s only custom_pts:weekly_challenge_one

# week 2
# reach world build limit (any dimension)
execute as @a unless entity @s[advancements={custom_pts:weekly_challenge_two=true}] as @s[y=1023,dy=20] run advancement grant @s only custom_pts:weekly_challenge_two

# week 3
# kill an elder guardian
# we don't actually handle this here since the advancement criteria does all the work
# just need to make sure the following criteria is set up in the advancement file
# "criteria": {
#     "elder_guardian_kill": {
#       "trigger": "minecraft:player_killed_entity",
#       "conditions": {
#         "entity": {
#           "type": "minecraft:elder_guardian"
#         }
#       }
#     }
#   }

# week 4
# obtain a stack of blast furnaces
execute as @a unless entity @s[advancements={custom_pts:weekly_challenge_four=true}] as @s[nbt={Inventory:[{id:"minecraft:blast_furnace",Count:64b}]}] run advancement grant @s only custom_pts:weekly_challenge_four

# <===== LEVELZ LEVEL =====>

# update players' LevelZ level
execute as @a store result score @s levelz_level run data get entity @s Level

# <===== POINTS UPDATE =====>

# finally, update players' points

# clear to 0
execute as @a run scoreboard players set @s points 0

# first based on advancements
execute as @a as @s[advancements={custom_pts:defense_relic=true}] run scoreboard players add @s points 50
execute as @a as @s[advancements={custom_pts:strength_relic=true}] run scoreboard players add @s points 50
execute as @a as @s[advancements={custom_pts:defense_two_relic=true}] run scoreboard players add @s points 50
execute as @a as @s[advancements={custom_pts:strength_two_relic=true}] run scoreboard players add @s points 50

# then based on weekly challenges
execute as @a as @s[advancements={custom_pts:weekly_challenge_one=true}] run scoreboard players add @s points 25
execute as @a as @s[advancements={custom_pts:weekly_challenge_two=true}] run scoreboard players add @s points 25
execute as @a as @s[advancements={custom_pts:weekly_challenge_three=true}] run scoreboard players add @s points 25
execute as @a as @s[advancements={custom_pts:weekly_challenge_four=true}] run scoreboard players add @s points 25

# and finally based on LevelZ level
execute as @a run scoreboard players operation @s points += @s levelz_level
