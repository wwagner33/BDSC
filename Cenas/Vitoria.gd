extends Node2D
onready var tela_vit=$"."
onready var timer =$Timer
onready var som_vit=$som_vitoria
onready var timer2=$Timer2
var chamada=0
func _on_Pino_vitoria():
	timer.start()

func _on_Timer_timeout():
	tela_vit.visible=true
	if(chamada==0):
		print('oi')
		musica()
	
func musica():
	chamada=1
	timer2.start()
	som_vit.play()
		
func _on_Timer2_timeout():
	som_vit.stop()



func _on_menu_button_up():
	get_tree().change_scene('res://Cenas/MainScene.tscn')
