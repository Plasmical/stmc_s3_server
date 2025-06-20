# function handling the teleportation of players based on their chosen spawn

# update all of these players' spawnpoints
execute as @a[scores={spawn_team=15}] run spawnpoint @s -7581 45 1217

# village spawns (100 block radius)
execute as @a[scores={spawn_team=15,spawn_location=1}] run spreadplayers -7437 1133 0 100 false @s

# buried treasure spawns (20 block radius)
execute as @a[scores={spawn_team=15,spawn_location=2}] run spreadplayers -7865 1417 0 20 false @s
execute as @a[scores={spawn_team=15,spawn_location=3}] run spreadplayers -7197 1113 0 20 false @s

# misc. structure spawns (50 block radius)
execute as @a[scores={spawn_team=15,spawn_location=4}] run spreadplayers -8201 827 0 50 false @s
execute as @a[scores={spawn_team=15,spawn_location=5}] run spreadplayers -7633 1071 0 50 false @s