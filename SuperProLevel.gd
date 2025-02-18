extends Node3D

var 	ball = preload("res://ball.tscn")
var 	ballcnt = randi_range(3,8)
var objectcount = 0
var score = 0
var restart = false
var i = 0
func _ready() -> void:
	randomize()
	#for i in range(ballcnt):
	objectcount+=1
	var object = ball.instantiate()
	object.position = Vector3(randf_range(-5,5), 7.5, randf_range(-5,5))
	add_child(object)
func _process(delta):
	if objectcount <= 0 && score > 0:
		get_tree().change_scene_to_file("res://end_menu.tscn")
