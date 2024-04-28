class_name Rules extends Object

const RULES: Dictionary = {
    Constants.ITEM_STATE.ROCK: Constants.ITEM_STATE.SCISSORS,
    Constants.ITEM_STATE.PAPER: Constants.ITEM_STATE.ROCK,
    Constants.ITEM_STATE.SCISSORS: Constants.ITEM_STATE.PAPER,
}

static func handle_collision(entity_1: Entity, entity_2: Entity) -> void:
    if entity_1.state == entity_2.state:
        return

    var lose_state = RULES[entity_1.state]
    if entity_2.state == lose_state:
        entity_2.state = entity_1.state
    else:
        entity_1.state = entity_2.state
