# function handling the teleportation of players based on their chosen spawn

# update all of these players' spawnpoints
execute as @a[scores={spawn_team=18}] run spawnpoint @s -9334 52 -4315

# village spawns (100 block radius)
execute as @a[scores={spawn_team=18,spawn_location=1}] run spreadplayers -9670 -3771 0 100 false @s

# buried treasure spawns (20 block radius)
execute as @a[scores={spawn_team=18,spawn_location=2}] run spreadplayers -9906 -4835 0 20 false @s

# misc. structure spawns (50 block radius)
execute as @a[scores={spawn_team=18,spawn_location=3}] run spreadplayers -9482 -4607 0 50 false @s
execute as @a[scores={spawn_team=18,spawn_location=4}] run spreadplayers -9198 -4971 0 50 false @s
execute as @a[scores={spawn_team=18,spawn_location=5}] run spreadplayers -9810 -3655 0 50 false @s