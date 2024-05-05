extends CanvasLayer
@onready var label = $Label


func _physics_process(delta):
	
	label.text = str(Global_bucket.score)
