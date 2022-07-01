extends Node2D

onready var camera_changers_container := $CameraChangers
onready var game_camera := $GameCamera

func _ready():
	for child in camera_changers_container.get_children():
		if child.is_in_group("CameraChanger"):
			child.connect("change_bounds", game_camera, "change_camera_bounds")
