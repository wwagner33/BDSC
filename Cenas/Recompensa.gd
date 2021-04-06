extends Node2D
onready var recompensa= $"."
onready var carta = $carta
var cartas_ganhas =[]
onready var timer=$Timer
var fecha_recompensa=false


func abrir_recompensa():
	fecha_recompensa=false
	timer.start()


func _on_Pino_recompensa(valor):
	match valor:
		0:
			carta.texture= load("res://Sprites/sprite_recompensa/obras-01.png")
		1:
			carta.texture= load("res://Sprites/sprite_recompensa/obras-02.png")
		2:
			carta.texture= load("res://Sprites/sprite_recompensa/obras-03.png")
		3:
			carta.texture= load("res://Sprites/sprite_recompensa/obras-04.png")
		4:
			carta.texture= load("res://Sprites/sprite_recompensa/obras-05.png")
		5:
			carta.texture= load("res://Sprites/sprite_recompensa/obras-06.png")

func voltar_jogo_recompensa():
	recompensa.visible=false


func _on_Timer_timeout():
	if(fecha_recompensa==false):
		recompensa.visible=true
		fecha_recompensa=true
