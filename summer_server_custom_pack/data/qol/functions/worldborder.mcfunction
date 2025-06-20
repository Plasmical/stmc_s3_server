# checks for players outside worldborder within a specific ring
# then applies the coinciding effect

# check for inside ring
execute as @a[x=-10000,y=-1000,z=-10000,dx=20000,dy=2000,dz=20000] at @s run scoreboard players set @s outside_border 0

# check for outside 10k by 10k [poison 1]
execute as @a at @s unless entity @s[x=-10000,y=-1000,z=-10000,dx=20000,dy=2000,dz=20000] run scoreboard players set @s outside_border 1

# check for outside 10,250 by 10,250 [poison 2]
execute as @a at @s unless entity @s[x=-10250,y=-1000,z=-10250,dx=20500,dy=2000,dz=20500] run scoreboard players set @s outside_border 2

# check for outside 10,500 by 10,500 [wither 1]
execute as @a at @s unless entity @s[x=-10500,y=-1000,z=-10500,dx=21000,dy=2000,dz=21000] run scoreboard players set @s outside_border 3

# check for outside 10,750 by 10,750 [wither 2]
execute as @a at @s unless entity @s[x=-10750,y=-1000,z=-10750,dx=21500,dy=2000,dz=21500] run scoreboard players set @s outside_border 4

# award effects for outside ring 1
execute as @a[scores={outside_border=1}] at @s run effect give @s poison 15 0

# award effects for outside ring 2
execute as @a[scores={outside_border=2}] at @s run effect give @s poison 15 1

# award effects for outside ring 3
execute as @a[scores={outside_border=3}] at @s run effect give @s poison 15 1
execute as @a[scores={outside_border=3}] at @s run effect give @s wither 15 0

# award effects for outside ring 4
execute as @a[scores={outside_border=4}] at @s run effect give @s poison 15 1
execute as @a[scores={outside_border=4}] at @s run effect give @s wither 15 1