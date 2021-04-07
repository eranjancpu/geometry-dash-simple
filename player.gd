extends KinematicBody2D

var grvity : int = 700
var vol : Vector2 = Vector2()
var jumpForce : int = 500

func _physics_process(delta):
	vol.x = 500
	
	if Input.is_action_pressed("jump") and is_on_floor():
		vol.y -= jumpForce
	if is_on_wall():
		get_tree().change_scene("res://screen.tscn")
	
	vol.y += grvity * delta
	vol = move_and_slide(vol, Vector2.UP)
	
#and is_on_floor()
