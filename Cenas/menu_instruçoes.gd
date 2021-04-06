extends Button
onready var label =$"Label_intruções"
onready var botao_instrucoes=$"."
signal modal_instrucoes
var estado=0
func _process(delta):
	if(botao_instrucoes.is_hovered()==true):
		label.text='<Instruções>'
	else:
		label.text= 'Instruções'
func instrucoes_pressionado():
	emit_signal("modal_instrucoes")

