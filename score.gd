extends Label

func _process(delta):
	self.text = str("You popped:" + Level.score + "Balls!")
