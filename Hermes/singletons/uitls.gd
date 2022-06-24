extends Node

func instance_scene_on_main(scene: PackedScene) -> Node:
	var instance = scene.instance()
	var i = get_tree().current_scene.add_child(instance)
	return i
