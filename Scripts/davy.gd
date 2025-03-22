extends CharacterBody2D

var speed: int = 200
var direction: Vector2 = Vector2(0,1)

func _physics_process(delta: float) -> void:
	var inputDir: Vector2 = Vector2(
		Input.get_axis("ui_left", "ui_right"), 
		Input.get_axis("ui_up", "ui_down")).normalized()
	if inputDir.x > 0:
		#Check if the player is moving right
		direction = inputDir
	elif inputDir.x < 0:
		#Check if the player is moving left
		direction = inputDir
	elif inputDir.y > 0:
		#Check if the player is moving up
		direction = inputDir
	elif inputDir.y < 0:
		#Check if the player is moving down
		direction = inputDir
		
	velocity = inputDir * speed
	move_and_slide()
