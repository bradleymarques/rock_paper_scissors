class_name EntitySpawner extends Node2D

const ENTITY_TEMPLATE = preload ("res://entity/entity.tscn")

func spawn_entities(count: int, min_position: Vector2, max_position: Vector2) -> void:
    for i in count:
        var new_entity = ENTITY_TEMPLATE.instantiate()

        new_entity.name = "Entity" + str(i + 1)

        var x = randf_range(min_position.x, max_position.x)
        var y = randf_range(min_position.y, max_position.y)
        new_entity.position = Vector2(x, y)

        add_child(new_entity)
