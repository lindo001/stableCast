extends Node2D
@onready var cast_r  =$ray_cast_r
@onready var cast_l  =$ray_cast_l
@onready var enemy_sprite  =$AnimatedSprite2D
@export var move_speed = 60
var facing = 1
@onready var killzone_node = $killzone/CollisionShape2D
func _process(delta):
	if cast_r.is_colliding():
		facing =- 1
		enemy_sprite.flip_h = true
	elif cast_l.is_colliding():
		facing = 1
		enemy_sprite.flip_h = false
		
	position.x += facing *delta*move_speed


func _on_hurtzone_body_entered(body):
	killzone_node.disabled = true
