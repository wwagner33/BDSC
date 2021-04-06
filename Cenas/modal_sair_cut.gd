extends Node2D
onready var modal_sair=$"."

func _on_modal_pause_modal_sair():
	modal_sair.visible=true


func _on_cancelar_button_up():
	modal_sair.visible=false


func _on_confirmar_button_up():
	get_tree().change_scene("res://Cenas/MainScene.tscn")
