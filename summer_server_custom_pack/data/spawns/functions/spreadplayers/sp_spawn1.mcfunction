# function handling the teleportation of players based on their chosen spawn

# update all of these players' spawnpoints
execute as @a[scores={spawn_team=1}] run spawnpoint @s 2626 53 -8171

# village spawns (100 block radius)
execute as @a[scores={spawn_team=1,spawn_location=1}] run spreadplayers 2618 -7951 0 100 false @s

# buried treasure spawns (20 blocks radius)
execute as @a[scores={spawn_team=1,spawn_location=2}] run spreadplayers 1850 -8535 0 20 false @s
execute as @a[scores={spawn_team=1,spawn_location=3}] run spreadplayers 3471 -8611 0 20 false @s

# misc. structure spawns (50 block radius)
execute as @a[scores={spawn_team=1,spawn_location=4}] run spreadplayers 1826 -8275 0 50 false @s
execute as @a[scores={spawn_team=1,spawn_location=5}] run spreadplayers 2290 -7999 0 50 false @s