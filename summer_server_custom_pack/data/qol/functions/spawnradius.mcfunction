# function that tests for players within spawn radius & notifies them if their status (inside/outside) changes

# test for entering spawn
# outside_spawn should be 1 (they were outside)
# location should be inside spawn (they are now inside)
execute as @a[x=-150,y=0,z=-150,dx=300,dy=150,dz=300,scores={outside_spawn=1}] run title @s title {"text":"Entering Spawn","italic":true,"color":"gold"}
# & update their outside_spawn value to reflect them now being inside
execute as @a[x=-150,y=0,z=-150,dx=300,dy=150,dz=300,scores={outside_spawn=1}] run scoreboard players set @s outside_spawn 0

# test for exiting spawn
# outside_spawn should be 0 (they were inside)
# location should be outside spawn (they are now outside)
execute as @a[scores={outside_spawn=0}] unless entity @s[x=-150,y=0,z=-150,dx=300,dy=150,dz=300] run title @s title {"text":"Leaving Spawn","italic":true,"color":"gold"}
# & update their outside_spawn value to reflect them now being inside
execute as @a[scores={outside_spawn=0}] unless entity @s[x=-150,y=0,z=-150,dx=300,dy=150,dz=300] run scoreboard players set @s outside_spawn 1