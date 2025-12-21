extends Node

var score: int = 0

func add_score(amount: int) -> void:
	score += amount
	Events.score_changed.emit(score)
