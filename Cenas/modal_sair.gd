extends Node2D
onready var modal_sair=$"."
onready var bt_sim=$sim
onready var bt_nao=$nao


func _on_sair_modal_sair():
	modal_sair.visible=true


func _on_nao_button_up():
	modal_sair.visible=false


func _on_sim_button_up():
	get_tree().quit()
