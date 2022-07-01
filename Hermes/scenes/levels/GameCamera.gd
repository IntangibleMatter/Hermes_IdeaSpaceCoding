extends Camera2D

onready var tween := $Tween
var duration := 1.0

func change_camera_bounds(left, top, right, bottom, camscale) -> void:
	if left != limit_left:
		tween.interpolate_property(self, "limit_left", limit_left, left, duration, Tween.TRANS_CUBIC, Tween.EASE_IN_OUT)
	if top != limit_top:
		tween.interpolate_property(self, "limit_top", limit_top, top, duration, Tween.TRANS_CUBIC, Tween.EASE_IN_OUT)
	if right != limit_right:
		tween.interpolate_property(self, "limit_right", limit_right, right, duration, Tween.TRANS_CUBIC, Tween.EASE_IN_OUT)
	if bottom != limit_bottom:
		tween.interpolate_property(self, "limit_bottom", limit_bottom, bottom, duration, Tween.TRANS_CUBIC, Tween.EASE_IN_OUT)
	if camscale != zoom:
		tween.interpolate_property(self, "zoom", zoom, camscale, duration, Tween.TRANS_CUBIC, Tween.EASE_IN_OUT)
		
