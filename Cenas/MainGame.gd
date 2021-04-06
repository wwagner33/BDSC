extends Node
onready var bt_ajustes=$bt_pause
onready var bt_colecao=$bt_colecao
onready var bt_dado =$Dado/TextureButton
signal abre_ajustes
signal abre_colecao
var chamada=0
onready var som=$AudioStreamPlayer
var incia_musica=true
func _process(delta):
	if(incia_musica==true):
		som.play()
		incia_musica=false
func fim_timer():
	pass # Replace with function body.

func _on_bt_ajustes_button_up():
	print('oi')
	emit_signal("abre_ajustes")


func _on_bt_colecao_button_up():
	emit_signal("abre_colecao")



func _on_Pino_desabilita():
	if(chamada==0):
		bt_dado.visible=false
		chamada=1


func _on_Infor_habilita_bt():
	if(chamada==1):
		bt_dado.visible=true
		chamada=0



func _on_AudioStreamPlayer_finished():
	incia_musica=true
