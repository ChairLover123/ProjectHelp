extends Label


# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	self.text = ("You popped " + str(SuperProLevel.score) + " Spheres")
