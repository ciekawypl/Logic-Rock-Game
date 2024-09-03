extends Node

func manage_collisions(_direction : Vector2, body : Variant):
	if body is Lock:
		body.queue_free()
		get_parent().queue_free()
