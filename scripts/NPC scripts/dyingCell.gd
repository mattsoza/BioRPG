extends Area2D

func _ready():
	pass

func interact():
	if Input.is_action_pressed("interact") and has_overlapping_bodies():
		var current_dialog = null
		if Dialogic.VAR.talkedToRedHelper == true and Dialogic.VAR.talkedToRedInformer == true:
			current_dialog = Dialogic.start('dyingCell3')
		elif Dialogic.VAR.talkedToRedHelper == true:
			current_dialog = Dialogic.start('dyingCell2')
		else:
			current_dialog = Dialogic.start('dyingCell1')
		add_child(current_dialog)
		
func _process(delta):
	interact()
