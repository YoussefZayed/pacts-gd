extends Camera2D
@export var ZOOM_MIN = 5 # maximum zoom

var imageX = 4000 # map dimensions x
var imageY = 2248 # map dimensions y

func _process(delta):
	ZOOM_MIN = max(float(get_viewport().size.x)/imageX,float(get_viewport().size.y)/imageY) # set minimum zoom based on ratio of map size to viewport size
	zoom.x = ZOOM_MIN
	zoom.y = ZOOM_MIN
