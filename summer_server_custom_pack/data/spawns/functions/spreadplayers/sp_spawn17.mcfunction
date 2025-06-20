# function handling the teleportation of players based on their chosen spawn

# update all of these players' spawnpoints
execute as @a[scores={spawn_team=17}] run spawnpoint @s -8819 23 -575

# village spawns (100 block radius)
execute as @a[scores={spawn_team=17,spawn_location=1}] run spreadplayers -8971 -327 0 100 false @s

# buried treasure spawns (20 block radius)
execute as @a[scores={spawn_team=17,spawn_location=2}] run spreadplayers -7462 -819 0 20 false @s

# misc. structure spawns (50 block radius)
execute as @a[scores={spawn_team=17,spawn_location=3}] run spreadplayers -7951 -1195 0 50 false @s
execute as @a[scores={spawn_team=17,spawn_location=4}] run spreadplayers -7943 -1011 0 50 false @s