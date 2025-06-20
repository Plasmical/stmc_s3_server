# function handling the teleportation of players based on their chosen spawn

# update all of these players' spawnpoints
execute as @a[scores={spawn_team=2}] run spawnpoint @s 9136 23 -9341

# village spawns (100 block radius)
execute as @a[scores={spawn_team=2,spawn_location=1}] run spreadplayers 9307 -9067 0 100 false @s

# buried treasure spawns (20 blocks radius)
execute as @a[scores={spawn_team=2,spawn_location=2}] run spreadplayers 9036 -9345 0 20 false @s
execute as @a[scores={spawn_team=2,spawn_location=3}] run spreadplayers 7467 -9661 0 20 false @s
execute as @a[scores={spawn_team=2,spawn_location=4}] run spreadplayers 9752 -9169 0 20 false @s

# misc. structure spawns (50 block radius)
execute as @a[scores={spawn_team=2,spawn_location=5}] run spreadplayers 8295 -9785 0 50 false @s
execute as @a[scores={spawn_team=2,spawn_location=6}] run spreadplayers 9252 -8589 0 50 false @s
execute as @a[scores={spawn_team=2,spawn_location=7}] run spreadplayers 7755 -9705 0 50 false @s