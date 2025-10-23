local Game = {}

Game.GameManager = require 'Game Managers/gamemanager'
Game.SceneManager = require 'Game Managers/scenemanager'
Game.Time = require 'Custom Functions/time'

Game.Entities = {
    Player = require 'player'
}

return Game