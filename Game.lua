local Game = {}

Game.GameManager = require 'Game Managers/gamemanager'
Game.SceneManager = require 'Game Managers/scenemanager'

Game.Entities = {
    Player = require 'player'
}

return Game