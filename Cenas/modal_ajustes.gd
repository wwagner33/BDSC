extends Node2D
onready var modal_ajustes=$"."
onready var bt_voltar =$voltar
onready var bt_aplicar=$aplicar
onready var bt_musica =$musica
onready var bt_efeitos =$efeitos
var estado_musica=0
var estado_efeito=0
var chamada1=0
var chamada2=0
func _process(delta):
	if(estado_musica==0):
		bt_musica.texture_normal=load('res://Sprites/Botoes/bt_menu/botao_ajustes_som_on.png')
		chamada1=0
		bt_musica.texture_hover=load('res://Sprites/Botoes/bt_menu/botao_ajustes_som_on_hover.png')
		chamada1=0
	if(estado_musica==1):
		bt_musica.texture_normal=load('res://Sprites/Botoes/bt_menu/botao_ajustes_som_off.png')
		bt_musica.texture_hover=load('res://Sprites/Botoes/bt_menu/botao_ajustes_som_off_hover.png')
		chamada1=1
		
	if(estado_efeito==0):
		bt_efeitos.texture_normal=load('res://Sprites/Botoes/bt_menu/botao_ajustes_efeitos_on.png')
		bt_efeitos.texture_hover=load('res://Sprites/Botoes/bt_menu/botao_ajustes_efeitos_on_hover.png')
		chamada2=0
	if(estado_efeito==1):
		bt_efeitos.texture_normal=load('res://Sprites/Botoes/bt_menu/botao_ajustes_efeitos_off.png')
		bt_efeitos.texture_hover=load('res://Sprites/Botoes/bt_menu/botao_ajustes_efeitos_off_hover.png')
		chamada2=1
		
		
func _on_ajustes_abre_ajustes():
	modal_ajustes.visible=true
	


func _on_aplicar_button_up():
	modal_ajustes.visible=false


func _on_voltar_button_up():
	modal_ajustes.visible=false


func _on_musica_button_up():
	if(estado_musica==0 && chamada1==0):
		estado_musica=1
	if(estado_musica==1 && chamada1==1):
		estado_musica=0
		
	print('estado_musica',estado_musica)

func _on_efeitos_button_up():
	if(estado_efeito==0 && chamada2==0):
		estado_efeito=1
	if(estado_efeito==1 && chamada2==1):
		estado_efeito=0
