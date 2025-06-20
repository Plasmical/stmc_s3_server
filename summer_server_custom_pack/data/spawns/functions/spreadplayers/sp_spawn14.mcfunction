# function handling the teleportation of players based on their chosen spawn

# update all of these players' spawnpoints
execute as @a[scores={spawn_team=14}] run spawnpoint @s -7952 1 3227

# village spawns (100 block radius)
execute as @a[scores={spawn_team=14,spawn_location=1}] run spreadplayers -8217 3219 0 100 false @s

# buried treasure spawns (20 block radius)
execute as @a[scores={spawn_team=14,spawn_location=2}] run spreadplayers -7285 3839 0 20 false @s
execute as @a[scores={spawn_team=14,spawn_location=3}] run spreadplayers -8413 3559 0 20 false @s

# misc. structure spawns (50 block radius)
execute as @a[scores={spawn_team=14,spawn_location=4}] run spreadplayers -7937 2775 0 50 false @s