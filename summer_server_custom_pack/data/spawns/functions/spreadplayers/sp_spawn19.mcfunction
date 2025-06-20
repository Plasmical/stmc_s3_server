# function handling the teleportation of players based on their chosen spawn

# update all of these players' spawnpoints
execute as @a[scores={spawn_team=19}] run spawnpoint @s -5318 10 -4113

# village spawns (100 block radius)
execute as @a[scores={spawn_team=19,spawn_location=1}] run spreadplayers -5102 -3825 0 100 false @s

# buried treasure spawns (20 block radius)
execute as @a[scores={spawn_team=19,spawn_location=2}] run spreadplayers -5446 -3885 0 20 false @s
execute as @a[scores={spawn_team=19,spawn_location=3}] run spreadplayers -5234 -4761 0 20 false @s

# misc. structure spawns (50 block radius)
execute as @a[scores={spawn_team=19,spawn_location=4}] run spreadplayers -5118 -3413 0 50 false @s
execute as @a[scores={spawn_team=19,spawn_location=5}] run spreadplayers -5875 -4845 0 50 false @s
execute as @a[scores={spawn_team=19,spawn_location=6}] run spreadplayers -5514 -4481 0 50 false @s