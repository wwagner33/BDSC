extends Node2D
onready var modal_colecao = $"."
onready var carta=$carta
onready var bt_direito=$direita
onready var bt_esquerdo =$esquerda
var imgs_habilitada=[load('res://Sprites/sprites_cartas/obras-01.png'),load('res://Sprites/sprites_cartas/obras-02.png'),
load('res://Sprites/sprites_cartas/obras-03.png'),load('res://Sprites/sprites_cartas/obras-04.png'),
load('res://Sprites/sprites_cartas/obras-05.png'),load('res://Sprites/sprites_cartas/obras-06.png')]
var imgs_desabilitada=[load('res://Sprites/sprites_cartas/obrasPB-01.png'),load('res://Sprites/sprites_cartas/obrasPB-02.png'),
load('res://Sprites/sprites_cartas/obrasPB-03.png'),load('res://Sprites/sprites_cartas/obrasPB-04.png'),
load('res://Sprites/sprites_cartas/obrasPB-05.png'),load('res://Sprites/sprites_cartas/obrasPB-06.png'),]
var habilitadas=[0,1,2,3,4,5]
var carta_atual=0
func _ready():
	carta.texture=imgs_desabilitada[0]
func _process(delta):
	if(carta_atual==0):
		bt_esquerdo.visible=false
		bt_esquerdo.disabled=true
	else:
		bt_esquerdo.visible=true
		bt_esquerdo.disabled=false
	if(carta_atual==imgs_habilitada.size()-1):
		bt_direito.visible=false
		bt_direito.disabled=true
	else:
		bt_direito.visible=true
		bt_direito.disabled=false
	if(habilitadas[carta_atual]==100):
		carta.texture=imgs_habilitada[carta_atual]
	if(habilitadas[carta_atual]!=100):
		carta.texture=imgs_desabilitada[carta_atual]
func _on_MainNode_abre_colecao():
	modal_colecao.visible=true
	

func _on_TextureButton_button_up():
	modal_colecao.visible=false
	carta_atual=0


func _on_esquerda_button_up():
	carta_atual-=1
func _on_direita_button_up():
	carta_atual+=1
	
func _on_Pino_carta_recebida(valor):
	match valor:
		0:
			habilitadas[0]=100
		1:
			habilitadas[1]=100
		2:
			habilitadas[2]=100
		3:
			habilitadas[3]=100
		4:
			habilitadas[4]=100
		5:
			habilitadas[5]=100
		
