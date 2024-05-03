extends Area2D
@onready var coin_sfx = $AudioStreamPlayer2D
@onready var game_m = %GameManager
@onready var animation_player = $AnimationPlayer

func _on_body_entered(body):
	if body.name == "knight":
		game_m.add_score()
		animation_player.play("coin_opickup")
