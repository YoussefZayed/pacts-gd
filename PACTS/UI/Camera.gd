extends Camera2D

#Camera Control
@export var XSPEED = 20.0 # speed in the x direction
@export var YSPEED = 20.0 # speed in the y direction
@export var SPEEDMIN = 20.0 # minimum pan speed
@export var SPEEDMAX = 40.0 # maximum pan speed
@export var ZOOM_SPEED = 20.0 # zoom speed
@export var ZOOM_MARGIN = 0.1
@export var ZOOM_MIN = 0.5 # minimum zoom
@export var ZOOM_MAX = 3.0 # maximum zoom

var mapX = 12032 # map dimensions x
var mapY = 6768 # map dimensions y

func _process(delta):
	var inputX = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left")) # get input x (left/right)
	var inputY = int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up")) # get input y (up/down)
	
	#Set Camera X Position
	var targetX = int(lerp(position.x, position.x + inputX*XSPEED*zoom.x, XSPEED*delta)) # set target x position
	if inputX != 0: # check to see if button is being pressed
		XSPEED = min(XSPEED+0.1,SPEEDMAX) # if button is being held accelerate
	else:
		XSPEED = max(XSPEED/2,SPEEDMIN) # if button is not being held decay
	
	if targetX < get_viewport().size.x/2: 
		targetX = get_viewport().size.x/2
	elif targetX > mapX-get_viewport().size.x/2:
		targetX = mapX-get_viewport().size.x/2
	position.x = targetX
	
	#Set Camera Y Position
	var targetY = int(lerp(position.y, position.y + inputY*YSPEED*zoom.y, YSPEED*delta))
	if inputY != 0:
		YSPEED = min(YSPEED+0.1,SPEEDMAX)
	else:
		YSPEED = max(YSPEED/2,SPEEDMIN)
		
	if targetY < get_viewport().size.y/2:
		targetY = get_viewport().size.y/2
	elif targetY > mapY-get_viewport().size.y/2:
		targetY = mapY-get_viewport().size.y/2
	position.y = targetY
	
