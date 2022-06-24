tool
extends Area2D

signal change_bounds(left, top, right, bottom, camscale)

export(Shape2D) var activation_shape

export var left := 0
export var top := 0
export var right := 512
export var bottom := 288
export var camscale := Vector2.ONE

onready var collision_shape := $CollisionShape2D


func _ready():
	collision_shape.shape = activation_shape


func _process(_delta):
	if Engine.editor_hint:
		collision_shape.shape = activation_shape
	else:
		set_process(false)


func _on_CameraChanger_body_entered(body: Node) -> void:
	if body.is_in_group("player"):
		emit_signal("change_bounds", left, top, right, bottom, camscale)
