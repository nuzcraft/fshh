extends Node3D

const SAND_PSX_MATERIAL = preload("res://shaders/material/sand_psx.material")
const GRASS_PSX_MATERIAL = preload("res://shaders/material/grass_psx.material")
const STONE_PSX_MATERIAL = preload("res://shaders/material/stone_psx.material")
const MUD_PSX_MATERIAL = preload("res://shaders/material/mud_psx.material")
const DIRT_PSX_MATERIAL = preload("res://shaders/material/dirt_psx.material")
const LIGHT_GRASS_PSX_MATERIAL = preload("res://shaders/material/light_grass_psx.material")
const DARK_STONE_PSX_MATERIAL = preload("res://shaders/material/dark_stone_psx.material")

@onready var ilan: MeshInstance3D = $ilan

func _ready() -> void:
	ilan.set_surface_override_material(0, SAND_PSX_MATERIAL)
	ilan.set_surface_override_material(1, GRASS_PSX_MATERIAL)
	ilan.set_surface_override_material(2, STONE_PSX_MATERIAL)
	ilan.set_surface_override_material(3, MUD_PSX_MATERIAL)
	ilan.set_surface_override_material(4, DIRT_PSX_MATERIAL)
	ilan.set_surface_override_material(5, LIGHT_GRASS_PSX_MATERIAL)
	ilan.set_surface_override_material(6, DARK_STONE_PSX_MATERIAL)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
