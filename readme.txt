Based on YouTube video
"Data models - using data to create extensible, maintainable games in Godot"
by Godotneers
https://www.youtube.com/watch?v=4vAkTHeoORk&t=4935s

[Player] -- has a --> [Inventory] <-- shows a -- [InventoryDialog]
						   |
[Item] <------------ has a list of
  |
resource model of --------> [Coin]
		  |
		  ----------------> [Heart]
