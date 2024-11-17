extends Node2D

@export var name_of_variable = 10
var thing_to_test = true
var food = 8  
# Called when the node enters the scene tree for the first time.

func _ready():
	check_food()
	print("current food count:", food)

func check_food():
	if food <= 0:
		print("you're out of food.")
	elif food < 5:
		print("your food is low.")
	elif food == 5:
		print("you're sort of stocked.")
	elif food < 10:
		print("you're well stocked.")
	elif food == 10:
		print("you're fully stocked.")
	else:
		print("invalid food quantity.") 

func _input(event):
	if event.is_action_pressed("ui_up"):  
		food += 1 
		print("food added, current food count:", food)
		check_food()
	elif event.is_action_pressed("ui_down"):
		food -=1
		print("food removed, current food count:", food)
		check_food()
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
