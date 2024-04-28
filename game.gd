class_name Game extends Node2D

@export var entity_spawner: EntitySpawner

func _ready() -> void:
    var viewport_rect: Rect2 = get_viewport_rect()
    entity_spawner.spawn_entities(
        Constants.ENTITY_COUNT,
        viewport_rect.position,
        viewport_rect.position + viewport_rect.size,
    )
