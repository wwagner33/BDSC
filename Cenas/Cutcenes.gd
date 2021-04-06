extends Node2D
onready var sprite=$Sprite
onready var botao =$TextureButton
var cutscene =0
var img=[load('res://Sprites/Sprites_cutcenes/c_02.png'),load('res://Sprites/Sprites_cutcenes/c_03.png'),
load('res://Sprites/Sprites_cutcenes/c_03.png'),load('res://Sprites/Sprites_cutcenes/c_04.png'),]
func _ready():
	pass # Replace with function body.



func bt_cutscene_pressionado():
	cutscene+=1
	sprite.texture=img[cutscene]
	if(cutscene>3):
		
