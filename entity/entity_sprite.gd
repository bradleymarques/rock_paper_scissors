class_name EntitySprite extends Sprite2D

var ROCK_TEXTURE = load("res://sprites/rock.png")
var PAPER_TEXTURE = load("res://sprites/paper.png")
var SCISSORS_TEXTURE = load("res://sprites/scissors.png")
var FALLBACK_TEXTURE = load("res://sprites/question.png")

func state_change(new_state: Constants.ITEM_STATE) -> void:
    match new_state:
        Constants.ITEM_STATE.ROCK:
            self.texture = ROCK_TEXTURE
        Constants.ITEM_STATE.PAPER:
            self.texture = PAPER_TEXTURE
        Constants.ITEM_STATE.SCISSORS:
            self.texture = SCISSORS_TEXTURE
        _:
            self.texture = FALLBACK_TEXTURE
