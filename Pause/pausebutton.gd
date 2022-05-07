extends Button

onready var tween = $Tween

func _ready():
	rect_pivot_offset = rect_size / 2

func _on_Button_pressed():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://choicer/choicer.tscn")
	Global.previous_conins = 0
	Global.current_coins = 0


func _on_Button_mouse_entered():
	#$AudioSelect.play()
	tween.remove_all()
	tween.interpolate_property(self,"rect_scale",null,Vector2(1.5,1.5),1.5,Tween.TRANS_ELASTIC,Tween.EASE_OUT)
	tween.start()


func _on_Button_mouse_exited():
	#$AudioUnselect.play()
	tween.remove_all()
	tween.interpolate_property(self,"rect_scale",null,Vector2(1,1),1.5,Tween.TRANS_ELASTIC,Tween.EASE_OUT)
	tween.start()
