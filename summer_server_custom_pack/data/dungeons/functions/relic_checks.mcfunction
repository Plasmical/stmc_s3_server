# function to check if players have each relic
# also awards effects for players with those relics

# first check for relics
execute store result score @a relic_defense_1 run clear @a cyan_dye{display:{Name:'{"text":"Relic of Defense","color":"gray","bold":true,"underlined":true}'}} 0
execute store result score @a relic_defense_2 run clear @a blue_dye{display:{Name:'{"text":"Relic of Immense Defense","color":"blue","bold":true,"underlined":true}'}} 0
execute store result score @a relic_strength_1 run clear @a orange_dye{display:{Name:'{"text":"Relic of Strength","color":"red","bold":true,"underlined":true}'}} 0
execute store result score @a relic_strength_2 run clear @a red_dye{display:{Name:'{"text":"Relic of Immense Strength","color":"dark_red","bold":true,"underlined":true}'}} 0

# then award effects for those with relics

# defense 1 & strength 1 first since they don't require any active effects already
execute as @a[scores={relic_defense_1=1..}] run effect give @s resistance 1 0 false
execute as @a[scores={relic_strength_1=1..}] run effect give @s strength 1 0 false

# defense 2 & strength 2 both require an active effect to activate
execute as @a[scores={relic_defense_2=1..},nbt={ActiveEffects:[{Id:11}]}] run effect give @s resistance 1 3 false
execute as @a[scores={relic_strength_2=1..},nbt={ActiveEffects:[{Id:5}]}] run effect give @s strength 1 3 false