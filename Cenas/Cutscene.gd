extends Node2D
onready var sprite=$Sprite
onready var botao =$TextureButton
onready var label =$Label
onready var modal_input=$input
onready var input =$input/LineEdit
var nome= ''
var img =[load("res://Sprites/Sprites_cutcenes/c_02.png"),load("res://Sprites/Sprites_cutcenes/c_02.png"),load("res://Sprites/Sprites_cutcenes/c_03.png"),load("res://Sprites/Sprites_cutcenes/c_04.png"),]
var texto =["'Oi, como vai ocê? Parece que está interessado em conhecer mais ao meu respeito, não é mesmo? Me chamo Chico e ocê?'",
"'Oi, como vai ocê? Parece que está interessado em conhecer mais ao meu respeito, não é mesmo? Me chamo Chico e ocê?'",
 nome+ " , aqui nesse joguinho a gente vai andar pelo tabuleiro, viu? Vamo aprender mais sobre a minha vida, como pessoa e como artista.",
"'Para avançar no jogo e me conhecer, que tal rodar o dado? Mas muito cuidado com as casinhas, viu?'",
"'Vão ter casas com informações, falando um pouco de toda a história da minha vida, casas que irão te recompensar com obras que eu fiz e vão ter casas com perguntas sobre mim, para ver se ocê me conhece bem mesmo.'"]
var numero_cut=0

# Called when the node enters the scene tree for the first time.
func _ready():
	label.text= texto[numero_cut]
func _process(delta):
	
	label.text= texto[numero_cut]
func bt_cut_pressionado():
	numero_cut+=1
	if(numero_cut==1):
		modal_input.visible=true
		botao.disabled=true
	if(numero_cut==img.size()-1):
		botao.texture_normal=load("res://Sprites/Botoes/bt_menu/botao_comecar.png")
		botao.texture_hover=load('res://Sprites/Botoes/bt_menu/botao_comecar_hover.png')
		
	if(numero_cut>3):
		get_tree().change_scene("res://Cenas/Main.tscn")
	else:
	 sprite.texture=img[numero_cut]
	 label.text= texto[numero_cut+1]


func _on_Button_button_up():
	var txtLabel = input.get_text()
	nome=txtLabel
	if(nome!= ""):
		texto[2]="'"+nome+',' +" aqui nesse joguinho a gente vai andar pelo tabuleiro, viu? Vamo aprender mais sobre a minha vida, como pessoa e como artista.'"
		modal_input.visible=false
		botao.disabled=false
		numero_cut+=1
