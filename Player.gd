extends KinematicBody2D

const SPEED = 500

onready var sprite = $Sprite

var screen_size
var half_sprite_size


func _ready():
	screen_size = get_viewport_rect(). size.x
	half_sprite_size = sprite.texture.get_width() * scale.x / 2

func _process(delta):
	if Input. is_action_pressed("left"):
		position.x -= SPEED * delta
	elif Input. is_action_pressed("right"):
		position.x += SPEED * delta

	position.x = clamp(position.x, 0 + half_sprite_size, screen_size - half_sprite_size)