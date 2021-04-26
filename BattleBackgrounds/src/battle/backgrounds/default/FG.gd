extends TextureRect

func _ready() -> void:
# warning-ignore:return_value_discarded
	get_viewport().connect("size_changed", self, "_on_viewport_size_changed")

func _on_viewport_size_changed() -> void:
	material.set_shader_param("screen_height", get_viewport().size.y)
