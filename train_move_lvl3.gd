extends StaticBody2D
signal send_train(signal)
var speed = 200
var do_move_train = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:signal send_train(true)
	$"../Button2".send_train2.connect(_send_train)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if do_move_train == true:
		position.x += speed * delta
	pass

func _send_train():
		print("sending train")
		do_move_train = true


func _on_area_2d_body_entered(body: Node2D) -> void:
	print("train entered")
	do_move_train = false
	pass # Replace with function body.
