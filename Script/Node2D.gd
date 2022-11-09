extends Node2D

func _ready():
	yield(VisualServer, "frame_post_draw")
	var img = $ViewportContainer/Viewport.get_texture().get_data()
	img.flip_y()
	img.save_png("vp_images.png")
