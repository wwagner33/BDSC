extends Button

onready var label =$Label_creditos
onready var botao_creditos=$"."
signal modal_creditos
func _process(delta):
	if(botao_creditos.is_hovered()==true):
		label.text='<Créditos>'
	else:
		label.text= 'Créditos'
		
func creditos_pressionado():
	emit_signal("modal_creditos")
