extends Node2D

onready var modal_creditos=$"."
onready var sprite_modal =$Sprite2
onready var bt_prox =$proximo
onready var bt_ant =$anterior
onready var bt_prox2=$proximo2
onready var bt_ant2 =$anterior2
var estado=0
var numero_sprite=0
var img=[load("res://Sprites/Sprites_menu/modais/credito01.png"),
load("res://Sprites/Sprites_menu/modais/credito02.png"),
load("res://Sprites/Sprites_menu/modais/credito03.png")]
func _process(delta):
	
	sprite_modal.texture=img[numero_sprite]
	
	if(numero_sprite<=0):
		bt_prox2.visible=true
		bt_prox2.disabled=false
		desaparece_bt()
	if(numero_sprite==2):
		bt_ant2.visible=true
		bt_ant2.disabled=false
		desaparece_bt()
	
	if(numero_sprite==1):
		aparece_bt()
	
	
func _on_proximo_button_up():
	numero_sprite+=1
func _on_anterior_button_up():
	numero_sprite-=1
func _on_proximo2_button_up():
	numero_sprite+=1

func _on_anterior2_button_up():
	numero_sprite-=1
	
func desaparece_bt():
	bt_ant.disabled=true
	bt_ant.visible=false
	bt_prox.disabled=true
	bt_prox.visible=false
func aparece_bt():
	bt_ant.disabled=false
	bt_ant.visible=true
	bt_prox.disabled=false
	bt_prox.visible=true
	bt_ant2.disabled=true
	bt_ant2.visible=false
	bt_prox2.disabled=true
	bt_prox2.visible=false


func _on_Crditos_modal_creditos():
	modal_creditos.visible=true





func _on_TextureButton_button_up():
	modal_creditos.visible=false
	numero_sprite=0
