extends Label

func _process(float):
	set_text("You popped " + str(SuperProLevel.score) + " Spheres")
