class_name Entity extends CharacterBody2D

var state: Constants.ITEM_STATE: set = set_state
@export var entity_sprite: EntitySprite

func _ready() -> void:
    var random_angle = deg_to_rad(randf_range(0, 360))
    velocity = Vector2(Constants.ENTITY_SPEED, 0).rotated(random_angle)
    _pick_random_state()

func _pick_random_state() -> void:
    state = Constants.ITEM_STATE.values()[randi() % len(Constants.ITEM_STATE)]

func _physics_process(delta: float) -> void:
    var collision_info = move_and_collide(velocity * delta)

    if collision_info == null:
        return

    velocity = velocity.bounce(collision_info.get_normal())

    var other: Node2D = collision_info.get_collider()
    if other as Entity:
        Rules.handle_collision(self, other)

func set_state(value: Constants.ITEM_STATE) -> void:
    state = value
    entity_sprite.state_change(state)
