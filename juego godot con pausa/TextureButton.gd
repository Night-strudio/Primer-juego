extends TextureButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TextureButton_pressed():
	get_tree().change_scene("res://pausa.tscn")
	
	


func _on_reanudar_pressed():
	get_tree().change_scene("res://nivel 1.tscn")
	

func _on_pausa_pressed():
	get_tree().change_scene("res://pausa.tscn")





func _on_menu_pressed():
	get_tree().change_scene("res://menu.tscn")
