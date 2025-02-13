extends Label

func _process(delta):
	self.text = str("You popped:" + Global.score + "Balls!")
