class_name PlayerStats
extends Resource

@export var max_hp: int = 100
var hp: int = 100

func reset() -> void:
	hp = max_hp

func take_damage(amount: int) -> void:
	hp = max(0, hp - amount)
