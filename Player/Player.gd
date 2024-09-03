class_name Player extends Node2D

@export var movement_component : MovementComponent

func manageCollisions(direction : Vector2, collider : Variant):
	if collider is Pushable:
		collider.push(direction)
		if collider.movement_component.can_move(direction):
			movement_component.move(direction, false)


func _process(_delta):
	if Input.is_action_pressed("up"):
		movement_component.move(Vector2.UP)
	elif Input.is_action_pressed("down"):
		movement_component.move(Vector2.DOWN)
	elif Input.is_action_pressed("left"):
		movement_component.move(Vector2.LEFT)
	elif Input.is_action_pressed("right"):
		movement_component.move(Vector2.RIGHT)
