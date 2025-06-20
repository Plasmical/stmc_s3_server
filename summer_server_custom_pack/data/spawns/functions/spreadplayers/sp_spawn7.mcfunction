# function handling the teleportation of players based on their chosen spawn

# update all of these players' spawnpoints
execute as @a[scores={spawn_team=7}] run spawnpoint @s 8793 39 7891

# village spawns (100 block radius)
execute as @a[scores={spawn_team=7,spawn_location=1}] run spreadplayers 8523 8459 0 100 false @s
execute as @a[scores={spawn_team=7,spawn_location=2}] run spreadplayers 8111 7883 0 100 false @s
execute as @a[scores={spawn_team=7,spawn_location=3}] run spreadplayers 8823 8043 0 100 false @s

# buried treasure spawns (20 blocks radius)
execute as @a[scores={spawn_team=7,spawn_location=4}] run spreadplayers 9103 8415 0 20 false @s