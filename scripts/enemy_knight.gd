extends Node2D

var moveSpeed = 30
@onready var leftcast = $RayCast2D
@onready var rightcast = $RayCast2D2
var facing = 1
@onready var killzone = $killzone
@onready var timer = $Timer
@onready var hurtzone_node = $hurtzone/CollisionShape
@onready var killzone_node = $killzone/CollisionShape2D
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if !leftcast.is_colliding(): facing = 1
	if !rightcast.is_colliding(): facing = - 1
	position.x += facing * moveSpeed * delta


func _on_hurtzone_body_entered(body):
	print(body.name)
	if body.is_in_group("player"):
		hurtzone_node.disabled = true
		killzone_node.disabled = true
		#Invalid set index 'disabled' (on base: 'null instance') with value of type 'bool'.
		timer.start()



func _on_timer_timeout():
	queue_free()




