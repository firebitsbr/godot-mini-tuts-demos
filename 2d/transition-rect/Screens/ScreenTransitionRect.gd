extends ColorRect

export(String, FILE, "*.tscn") var next_scene_path

onready var _anim_player := $AnimationPlayer

func _ready() -> void:
	_anim_player.play_backwards("Fade")


func transit(to := next_scene_path) -> void:
	_anim_player.play("Fade")
	yield(_anim_player, "animation_finished")
	get_tree().change_scene(to)
