# tick file for waystones

# onboard players
execute as @a unless entity @s[scores={waystone_uses=0..}] run scoreboard players set @s waystone_uses 0

# advancement checkup
execute as @a[scores={waystoneuses=1,waystone_advancement1=0}] run advancement grant @s only waystones:waystone_use1
execute as @a[scores={waystoneuses=1,waystone_advancement1=0}] run scoreboard players set @s waystone_advancement1 1
execute as @a[scores={waystoneuses=10,waystone_advancement2=0}] run advancement grant @s only waystones:waystone_use2
execute as @a[scores={waystoneuses=10,waystone_advancement2=0}] run scoreboard players set @s waystone_advancement2 1
execute as @a[scores={waystoneuses=50,waystone_advancement3=0}] run advancement grant @s only waystones:waystone_use3
execute as @a[scores={waystoneuses=50,waystone_advancement3=0}] run scoreboard players set @s waystone_advancement3 1

# check each player for waystone tickets
execute store result score @a waystoneticket1count run clear @a minecraft:paper{display:{Name:'{"text":"Waystone 1 Ticket","color":"gold","bold":true}'}} 0
execute store result score @a waystoneticket2count run clear @a minecraft:paper{display:{Name:'{"text":"Waystone 2 Ticket","color":"gold","bold":true}'}} 0
execute store result score @a waystoneticket3count run clear @a minecraft:paper{display:{Name:'{"text":"Waystone 3 Ticket","color":"gold","bold":true}'}} 0
execute store result score @a waystoneticket4count run clear @a minecraft:paper{display:{Name:'{"text":"Waystone 4 Ticket","color":"gold","bold":true}'}} 0
execute store result score @a waystoneticket5count run clear @a minecraft:paper{display:{Name:'{"text":"Waystone 5 Ticket","color":"gold","bold":true}'}} 0
execute store result score @a waystoneticket6count run clear @a minecraft:paper{display:{Name:'{"text":"Waystone 6 Ticket","color":"gold","bold":true}'}} 0
execute store result score @a waystoneticket7count run clear @a minecraft:paper{display:{Name:'{"text":"Waystone 7 Ticket","color":"gold","bold":true}'}} 0
execute store result score @a waystoneticket8count run clear @a minecraft:paper{display:{Name:'{"text":"Waystone 8 Ticket","color":"gold","bold":true}'}} 0

# update sequences
execute run function waystones:waystone_sequence_one
execute run function waystones:waystone_sequence_two
execute run function waystones:waystone_sequence_three
execute run function waystones:waystone_sequence_four
execute run function waystones:waystone_sequence_five
execute run function waystones:waystone_sequence_six
execute run function waystones:waystone_sequence_seven
execute run function waystones:waystone_sequence_eight