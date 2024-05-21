extends Camera2D

var mapX = 12032 # map dimensions x
var mapY = 6768 # map dimensions y

#Camera Control
@export var XSPEED = 20.0 # speed in the x direction
@export var xspeedTarget = 20.0 # speed in the x direction
@export var YSPEED = 20.0 # speed in the y direction
@export var yspeedTarget = 20.0 # speed in the y direction
@export var SPEEDMIN = 20.0 # minimum pan speed
@export var SPEEDMAX = 40.0 # maximum pan speed
@export var ZOOM_SPEED = 20.0 # zoom speed
@export var ZOOM_MARGIN = 0.1
@export var ZOOM_MIN = 0.1 # minimum zoom
@export var ZOOM_MAX = 5 # maximum zoom

var zoomFactor = 1.0 # variable to store how much the game should zoom in/out
var zoomPos  =Vector2()
var zooming = false # variable to track whether the user wants to zoom
var mousePos = Vector2()

func _ready():
	@warning_ignore("integer_division") # ignore warning
	position.x = mapX/2 # set inital position as the middle of the map x
	@warning_ignore("integer_division") # ignore warning
	position.y = mapY/2 # set inital position as the middle of the map y

func _process(delta):
	var inputX = int((Input.is_action_pressed("ui_right") or Input.is_action_pressed("PressD"))) - int(Input.is_action_pressed("ui_left")or Input.is_action_pressed("PressA")) # get input x (left/right)
	var inputY = int(Input.is_action_pressed("ui_down") or Input.is_action_pressed("PressS")) - int(Input.is_action_pressed("ui_up") or Input.is_action_pressed("PressW")) # get input y (up/down)
	
	ZOOM_MIN = min(float(get_viewport().size.x)/mapX,float(get_viewport().size.y)/mapY) # set minimum zoom based on ratio of map size to viewport size
	ZOOM_MAX = max((mapX/float(get_viewport().size.x))/2,(mapY/float(get_viewport().size.y))/2) # set maximum zoom based on ratio of map size to viewport size
	zoom.x = lerp(zoom.x, zoom.x*zoomFactor, ZOOM_SPEED*delta) # set zoom x
	zoom.y = lerp(zoom.y, zoom.y*zoomFactor, ZOOM_SPEED*delta) # set zoom y
	zoom.x = clamp(zoom.x, ZOOM_MIN, ZOOM_MAX) # keep zoom within calculated limits
	zoom.y = clamp(zoom.y, ZOOM_MIN, ZOOM_MAX) # keep zoom within calculated limits
	
	if not zooming: # if not zooming
		zoomFactor = 1.0 # don't change zoom
	
	#Set Camera X Position
	var targetX = int(lerp(position.x, position.x + inputX*XSPEED*sqrt(zoom.x), XSPEED*delta)) # set target x position
	if inputX != 0: # check to see if button is being pressed
		xspeedTarget = min(xspeedTarget+0.1,SPEEDMAX) # if button is being held accelerate
	else:
		xspeedTarget = max(xspeedTarget/2,SPEEDMIN) # if button is not being held decay
	XSPEED = min(xspeedTarget*(1+0.5*int(Input.is_key_pressed(KEY_SHIFT))), SPEEDMAX) # shift to camera sprint
	
	position.x = clamp(targetX, (get_viewport().size.x/2)/zoom.x, mapX-(get_viewport().size.x/2)/zoom.x) # push target position to display
	
	#Set Camera Y Position
	var targetY = int(lerp(position.y, position.y + inputY*YSPEED*sqrt(zoom.y), YSPEED*delta)) # set target y position
	if inputY != 0: # check to see if button is being pressed
		yspeedTarget = min(yspeedTarget+0.1,SPEEDMAX) # if button is being held accelerate
	else:
		yspeedTarget = max(yspeedTarget/2,SPEEDMIN) # if button is not being held decay
	YSPEED = min(yspeedTarget*(1+0.5*int(Input.is_key_pressed(KEY_SHIFT))), SPEEDMAX) # shift to camera sprint
	
	position.y = clamp(targetY, (get_viewport().size.y/2)/zoom.y, mapY-(get_viewport().size.y/2)/zoom.y) # push target position to display

func _input(event):
	if abs(zoomPos.x-get_global_mouse_position().x)>ZOOM_MARGIN:
		zoomFactor = 1.0
	if abs(zoomPos.y-get_global_mouse_position().y)>ZOOM_MARGIN:
		zoomFactor = 1.0
	
	if event is InputEventMouseButton:
		if event.is_pressed():
			zooming = true
			if event.is_action("WheelDown"):
				zoomFactor -= 0.01*ZOOM_SPEED
				zoomPos = get_global_mouse_position()
			if event.is_action("WheelUp"):
				zoomFactor += 0.01*ZOOM_SPEED
				zoomPos = get_global_mouse_position()
		else:
			zooming = false
