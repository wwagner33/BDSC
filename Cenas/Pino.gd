extends Node
onready var pino= $Pino_sprite
onready var dado = $"../Dado"
onready var quiz = $"../Quiz"
onready var label_pontuacao=$pontuacao
signal abre_quiz
signal abre_infor
signal abre_recompensa
signal oi(valor)
signal infor(valor)
signal recompensa(valor)
signal carta_recebida(valor)
signal vitoria
var numero= 0
var casa =0
var timer_pode = false
var chamada=0
var pontuacao=0
var converte
var vetor = [0]
var posicoesX_casa=[167, 237, 247, 247, 247, 247, 327, 
402, 407, 487,557,567,567,567,487,420,407,407,487,567,647,
727,727,727,735,807,887,887,887,967]    
var posicoesY_casa=[172,172,252,332,412,472,492,492,562,
572,572,492,412,332,332,332,252,172,172,172,172,172,252,332,412,412,412,332,252,252]

func _ready():
	pino.position.x=192
	pino.position.y=222

func _process(delta):
	converte=String(pontuacao)
	label_pontuacao.text='Pontuação: '+converte
	pino.position.x=posicoesX_casa[casa];
	pino.position.y=posicoesY_casa[casa];
	match casa:
		1:
			if(chamada==0):
				emit_signal("abre_infor")
				chamada=1
			emit_signal("infor",0)
		2:
			if(chamada==0):
				emit_signal("abre_quiz")
				chamada=1
			emit_signal("oi",0)
		3:
			if(chamada==0):
				emit_signal("abre_recompensa")
				chamada=1
			emit_signal("recompensa",0)
			emit_signal("carta_recebida",0)
		
		4:
			if(chamada==0):
				emit_signal("abre_quiz")
				chamada=1
			emit_signal("oi",1)
		6:
			if(chamada==0):
				emit_signal("abre_infor")
				chamada=1
			emit_signal("infor",1)
		7:
			if(chamada==0):
				emit_signal("abre_quiz")
				chamada=1
			emit_signal("oi",2)
		9:
			if(chamada==0):
				emit_signal("abre_recompensa")
				chamada=1
			emit_signal("recompensa",1)
			emit_signal("carta_recebida",1)
		11:
			if(chamada==0):
				emit_signal("abre_quiz")
				chamada=1
			emit_signal("oi",3)
		13:
			if(chamada==0):
				emit_signal("abre_recompensa")
				chamada=1
			emit_signal("recompensa",2)
			emit_signal("carta_recebida",2)
		14:
			if(chamada==0):
				emit_signal("abre_quiz")
				chamada=1
			emit_signal("oi",4)
		16:
			if(chamada==0):
				emit_signal("abre_infor")
				chamada=1
			emit_signal("infor",2)
		17:
			if(chamada==0):
				emit_signal("abre_quiz")
				chamada=1
			emit_signal("oi",5)
		18:
			if(chamada==0):
				emit_signal("abre_quiz")
				chamada=1
			emit_signal("oi",6)
		19:
			if(chamada==0):
				emit_signal("abre_recompensa")
				chamada=1
			emit_signal("recompensa",3)
			emit_signal("carta_recebida",3)
		21:
			if(chamada==0):
				emit_signal("abre_quiz")
				chamada=1
			emit_signal("oi",7)
		22:
			if(chamada==0):
				emit_signal("abre_recompensa")
				chamada=1
			emit_signal("recompensa",4)
			emit_signal("carta_recebida",4)
		23:
			if(chamada==0):
				emit_signal("abre_quiz")
				chamada=1
			emit_signal("oi",8)
		24:
			if(chamada==0):
				emit_signal("abre_infor")
				chamada=1
			emit_signal("infor",3)
		26:
			if(chamada==0):
				emit_signal("abre_infor")
				chamada=1
			emit_signal("infor",4)
		27: 
			if(chamada==0):
				emit_signal("abre_recompensa")
				chamada=1
			emit_signal("recompensa",5)
			emit_signal("carta_recebida",5)
		28:
			if(chamada==0):
				emit_signal("abre_quiz")
				chamada=1
			emit_signal("oi",9)


func dado_rolado():
	var cont =0
	numero=dado.numero
	casa+=numero
	chamada=0

#condição para não passar de 29 pois a casa 29, contadas a partir do 0, é a casa final
	if(casa>=29):
		casa=29
		emit_signal("vitoria")
	vetor.append(casa)
	print(vetor)
	#mudar condição de erro
func erro():
	vetor.remove(vetor.size()-1)
	casa=vetor[vetor.size()-1]
	vetor.append(casa)
func resposta_errada():
	erro()
	if(pontuacao==0):
		pontuacao=0
	else:
		pontuacao-=1

func _on_Quiz_resposta_correta():
	pontuacao+=1
