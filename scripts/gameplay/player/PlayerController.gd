extends CharacterBody2D

@export var speed: float = 220.0
@export var stats: PlayerStats

func _ready() -> void:
	if stats == null:
		stats = PlayerStats.new()
		stats.reset()

func _physics_process(_dt: float) -> void:
	var dir := Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
		Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	).normalized()

	velocity = dir * speed
	move_and_slide()

func apply_damage(amount: int) -> void:
	stats.take_damage(amount)
	Events.player_damaged.emit(stats.hp, amount)
