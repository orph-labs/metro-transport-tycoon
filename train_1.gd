extends StaticBody2D

var speed = 200
var do_move_train = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if do_move_train == true:
		position.x += speed * delta
	pass

func _send_train1(send):
		print("sending train")
		do_move_train = true


func _on_area_2d_body_entered(body: Node2D) -> void:
	print("train entered")
	do_move_train = false
	pass # Replace with function body.
