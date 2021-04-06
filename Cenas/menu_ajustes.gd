extends Button
onready var label =$Label_ajustes
onready var botao_ajustes=$"."
signal abre_ajustes
func _process(delta):
	if(botao_ajustes.is_hovered()==true):
		label.text='<Ajustes>'
	else:
		label.text= 'Ajustes'
	
func ajustes_pressionado():
	emit_signal("abre_ajustes")

