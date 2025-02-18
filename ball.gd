extends RigidBody3D
@onready var sfx = $AudioStreamPlayer3D
@onready var explosion = $GPUParticles3D

func _on_input_event(camera: Node, event: InputEvent, event_position: Vector3, normal: Vector3, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT && event.pressed == true:
			explosion.emitting = true
			sfx.play()
			await sfx.finished
			SuperProLevel.objectcount -= 1
			SuperProLevel.score += 1
			print(SuperProLevel.score)
			print(SuperProLevel.objectcount)
			queue_free()
