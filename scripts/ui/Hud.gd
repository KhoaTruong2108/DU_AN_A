extends CanvasLayer

@onready var hp_label: Label = %HpLabel
@onready var score_label: Label = %ScoreLabel

func _ready() -> void:
	Events.player_damaged.connect(_on_player_damaged)
	Events.score_changed.connect(_on_score_changed)

	# initialize
	hp_label.text = "HP: 100"
	score_label.text = "SCORE: 0"

func _on_player_damaged(current_hp: int, _amount: int) -> void:
	hp_label.text = "HP: %d" % current_hp

func _on_score_changed(score: int) -> void:
	score_label.text = "SCORE: %d" % score
