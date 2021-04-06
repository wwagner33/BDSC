extends Node2D
onready var modal_menu_ajueste=$"."
func _ready():
	pass # Replace with function body.




func _on_Ajustes_modal_menu():
	modal_menu_ajueste.visible=true


func _on_sim_button_up():
	get_tree().change_scene("res://Cenas/MainScene.tscn")


func _on_nao_button_up():
	modal_menu_ajueste.visible=false
