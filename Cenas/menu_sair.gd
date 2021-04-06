extends Button

onready var label =$Label_sair
onready var botao_sair=$"."
signal modal_sair
var estado=0
func _process(delta):
	if(botao_sair.is_hovered()==true):
		label.text='<Sair>'
	else:
		label.text= 'Sair'
func sair_pressionado():
	emit_signal("modal_sair")
	
