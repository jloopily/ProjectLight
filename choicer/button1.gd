extends Button

onready var tween = $Tween


func _on_Button_mouse_entered():
	tween.remove_all()
	tween.interpolate_property(self,"rect_scale",null,Vector2(1.5,1.5),1.5,Tween.TRANS_ELASTIC,Tween.EASE_OUT)
	tween.start()
	
func _on_Button_mouse_exited():
	tween.remove_all()
	tween.interpolate_property(self,"rect_scale",null,Vector2(1,1),1.5,Tween.TRANS_ELASTIC,Tween.EASE_OUT)
	tween.start()
