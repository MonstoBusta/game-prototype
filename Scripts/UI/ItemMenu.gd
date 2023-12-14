extends Control

@onready var equipment = $Equipment
@onready var inventory = $Inventory

@onready var tool_tip = preload("res://Scenes/Menus/Tooltip.tscn")

var isInventoryShowing = false

func _unhandled_input(event):
	if event.is_action_pressed("Tab"):
		print("_unhandled_input fired")
		if(isInventoryShowing):
			print("inventory WAS showing, should no longer be")
			equipment.hide()
			inventory.hide()
			isInventoryShowing = false
		else:
			print("inventory was not showing, should now be")
			equipment.show()
			inventory.show()
			isInventoryShowing = true
