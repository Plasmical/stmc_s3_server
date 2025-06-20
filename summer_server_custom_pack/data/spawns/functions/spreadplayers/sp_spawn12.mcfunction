# function handling the teleportation of players based on their chosen spawn

# update all of these players' spawnpoints
execute as @a[scores={spawn_team=12}] run spawnpoint @s 85 14 6955

# village spawns (100 block radius)
execute as @a[scores={spawn_team=12,spawn_location=1}] run spreadplayers 91 7219 0 100 false @s

# buried treasure spawns (20 blocks radius)
execute as @a[scores={spawn_team=12,spawn_location=2}] run spreadplayers -729 7003 0 20 false @s
execute as @a[scores={spawn_team=12,spawn_location=3}] run spreadplayers 442 6695 0 20 false @s

# misc. structure spawns (50 block radius)
execute as @a[scores={spawn_team=12,spawn_location=4}] run spreadplayers 19 6747 0 50 false @s
execute as @a[scores={spawn_team=12,spawn_location=5}] run spreadplayers 499 6979 0 50 false @s