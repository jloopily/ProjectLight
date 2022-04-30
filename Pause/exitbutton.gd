extends Button

onready var tween = $Tween

func _ready():
	rect_pivot_offset = rect_size / 2

func _on_Button2_pressed():
	get_tree().quit()



func _on_Button2_mouse_entered():
	tween.remove_all()
	tween.interpolate_property(self,"rect_scale",null,Vector2(1.5,1.5),1.5,Tween.TRANS_ELASTIC,Tween.EASE_OUT)
	tween.start()
	
	


func _on_Button2_mouse_exited():
	tween.remove_all()
	tween.interpolate_property(self,"rect_scale",null,Vector2(1,1),1.5,Tween.TRANS_ELASTIC,Tween.EASE_OUT)
	tween.start()
