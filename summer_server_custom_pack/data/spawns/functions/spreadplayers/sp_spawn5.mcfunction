# function handling the teleportation of players based on their chosen spawn

# update all of these players' spawnpoints
execute as @a[scores={spawn_team=5}] run spawnpoint @s 7818 37 1177

# village spawns (100 block radius)
execute as @a[scores={spawn_team=5,spawn_location=1}] run spreadplayers 7199 1223 0 100 false @s
execute as @a[scores={spawn_team=5,spawn_location=2}] run spreadplayers 8067 1155 0 100 false @s
execute as @a[scores={spawn_team=5,spawn_location=3}] run spreadplayers 7671 1803 0 100 false @s

# buried treasure spawns (20 blocks radius)
execute as @a[scores={spawn_team=5,spawn_location=4}] run spreadplayers 7727 919 0 20 false @s

# misc. structure spawns (50 block radius)
execute as @a[scores={spawn_team=5,spawn_location=5}] run spreadplayers 7771 1019 0 50 false @s