extends Node

signal blocks_switched

var max_coins = 0
var current_coins = 0
var previous_conins = 0

var text_box = ""

var block_switch = true

func _unhandled_input(event):
	if Input.is_action_just_pressed("fullscreen"):
		OS.window_fullscreen = !OS.window_fullscreen

func init_coin():
	max_coins = 20 

func collect_coin():
	current_coins += 1
	previous_conins = current_coins

func switch_blocks():
	block_switch = !block_switch
	emit_signal("blocks_switched")

func restart_game():
	#max_coins = 0
	current_coins = previous_conins
	block_switch = true
	text_box = ""
	
	#get_tree().reload_current_scene()
