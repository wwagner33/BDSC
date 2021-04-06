extends Node2D
onready var modal_instrucoes =$"."


func _on_intrues_modal_instrucoes():
	modal_instrucoes.visible=true


func _on_TextureButton_button_up():
	modal_instrucoes.visible=false
