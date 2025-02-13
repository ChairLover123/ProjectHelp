extends RigidBody3D
@onready var ball = $"Sphere Body"
@onready var particle = $GPUParticles3D
@onready var sfx = $AudioStreamPlayer3D
@onready var collisionbody3d = $CollisionShapeSphere


func _ready():
	Level.objectcount += 1

func _on_click_signal_input_event(camera: Node, event: InputEvent, event_position: Vector3, normal: Vector3, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT && event.pressed == true:
			ball.visible = false
			particle.emitting = true
			sfx.playing = true
			Level.score += 1
			Level.objectcount -= 1
			
