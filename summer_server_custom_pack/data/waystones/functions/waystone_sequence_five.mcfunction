# function that executes the sequence for waystone 5

# begin the sequence for all players who have the ticket
execute as @a[scores={waystoneticket5count=1..}] run scoreboard players set @s waystonesequence5 1

# advancement checkup
# award player +1 on waystone ticket usages (can be any waystone)
execute as @a[scores={waystonesequence5=1}] run scoreboard players add @s waystoneuses 1

# sequence #1: preparing player to teleport
# award player +1 on waystone ticket usages (can be any waystone)
execute as @a[scores={waystonesequence5=1}] run scoreboard players add @s waystoneuses 1
# clear the ticket from the player
execute as @a[scores={waystonesequence5=1}] run clear @s minecraft:paper{display:{Name:'{"text":"Waystone 5 Ticket","color":"gold","bold":true}'}} 1
# tell the player they are being teleported
execute as @a[scores={waystonesequence5=1}] run tellraw @s {"text":"Teleporting in 5 seconds"}
# force reset all timers
execute as @a[scores={waystonesequence5=1}] run scoreboard players set @s waystonesendtimer 0
execute as @a[scores={waystonesequence5=1}] run scoreboard players set @s waystonereturntimer 0
# move on to the next sequence
execute as @a[scores={waystonesequence5=1}] run scoreboard players set @s waystonesequence5 2

# sequence #2: waiting five seconds to send player
# update the timer
execute as @a[scores={waystonesequence5=2}] run scoreboard players add @s waystonesendtimer 1
# if the timer is complete, teleport the player
execute as @a[scores={waystonesequence5=2,waystonesendtimer=100}] run teleport @s 0 78 0
# 4 second update
execute as @a[scores={waystonesequence5=2,waystonesendtimer=20}] run tellraw @s {"text":"4"}
# 3 second update
execute as @a[scores={waystonesequence5=2,waystonesendtimer=40}] run tellraw @s {"text":"3"}
# 2 second update
execute as @a[scores={waystonesequence5=2,waystonesendtimer=60}] run tellraw @s {"text":"2"}
# 1 second update
execute as @a[scores={waystonesequence5=2,waystonesendtimer=80}] run tellraw @s {"text":"1"}
# if the timer is complete, set the sequence to 3
execute as @a[scores={waystonesendtimer=100}] run scoreboard players set @s waystonesequence5 3
# if the timer is complete, reset the timer
execute as @a[scores={waystonesendtimer=100}] run scoreboard players set @s waystonesendtimer 0

# sequence #3: waiting ten minutes to return player
# update the timer
execute as @a[scores={waystonesequence5=3}] run scoreboard players add @s waystonereturntimer 1
# if the timer is complete, teleport the player back
execute as @a[scores={waystonesequence5=3,waystonereturntimer=12000}] run teleport @s 4466 163 8812
# if the timer is almost complete, tell the player
execute as @a[scores={waystonesequence5=3,waystonereturntimer=10800}] run tellraw @s {"text":"Teleporting back in one minute"}
# if the timer is nearly complete, tell the player
execute as @a[scores={waystonesequence5=3,waystonereturntimer=11800}] run tellraw @s {"text":"Teleporting back in ten seconds"}
# 5 second update
execute as @a[scores={waystonesequence5=3,waystonereturntimer=11900}] run tellraw @s {"text":"5"}
# 4 second update
execute as @a[scores={waystonesequence5=3,waystonereturntimer=11920}] run tellraw @s {"text":"4"}
# 3 second update
execute as @a[scores={waystonesequence5=3,waystonereturntimer=11940}] run tellraw @s {"text":"3"}
# 2 second update
execute as @a[scores={waystonesequence5=3,waystonereturntimer=11960}] run tellraw @s {"text":"2"}
# 1 second update
execute as @a[scores={waystonesequence5=3,waystonereturntimer=11980}] run tellraw @s {"text":"1"}
# if the timer is complete, reset the sequence
execute as @a[scores={waystonereturntimer=12000}] run scoreboard players set @s waystonesequence5 0
# if the timer is complete, reset the timer
execute as @a[scores={waystonereturntimer=12000}] run scoreboard players set @s waystonereturntimer 0