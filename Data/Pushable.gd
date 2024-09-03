class_name Pushable extends Area2D

@export var movement_component : MovementComponent

func push(direction : Vector2):
	movement_component.move(direction)
