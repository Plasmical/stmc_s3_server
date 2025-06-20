# function handling spawn location selection for region #9

# distribute spawn book to players
# this book allows them to choose which spawn they would like, updating the spawn_location variable
execute as @a[scores={spawn_team=9,spawn_status=0}] run give @s minecraft:written_book{pages:['["",{"text":"Select your spawn for region #9 from the options below:\\n\\n"},{"text":"Village #1","color":"gold","clickEvent":{"action":"run_command","value":"/trigger spawn_location set 1"}},{"text":"\\n\\n","color":"reset"},{"text":"Buried Treasure #1","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger spawn_location set 2"}},{"text":"\\n","color":"reset"},{"text":"Buried Treasure #2","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger spawn_location set 3"}},{"text":"\\n","color":"reset"},{"text":"Buried Treasure #3","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger spawn_location set 4"}},{"text":"\\n\\n","color":"reset"},{"text":"Random Structure #1","color":"blue","clickEvent":{"action":"run_command","value":"/trigger spawn_location set 5"}},{"text":"\\n","color":"reset"},{"text":"Random Structure #2","color":"blue","clickEvent":{"action":"run_command","value":"/trigger spawn_location set 6"}}]'],title:"Region #9 Spawns",author:dev,display:{Lore:["Allows for the custom selection of spawns for region #9."]}}

# set spawn status to 1
# this verifies they have received the spawn book
execute as @a[scores={spawn_team=9,spawn_status=0}] run scoreboard players set @s spawn_status 1

# remove book once player has selected a spawn location (should be the only item in their inventory)
execute as @a[scores={spawn_team=9,spawn_status=1,spawn_location=1..9}] run clear @s

# update player status
# this verifies they have chosen a spawn location with the book
execute as @a[scores={spawn_team=9,spawn_status=1,spawn_location=1..9}] run scoreboard players set @s spawn_status 2

# trigger player to join rest of world & receive info + award books
execute as @a[scores={spawn_team=9,spawn_status=2}] run function spawns:init_player