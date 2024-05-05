extends Area2D
@onready var timer = $Timer

func _on_body_entered(body):
	timer.start()
	   
	Engine.time_scale = 0.1
	body.get_node("CollisionShape2D").queue_free()
	print("You died")


func _on_timer_timeout():
	get_tree().reload_current_scene()
	Engine.time_scale = 1
