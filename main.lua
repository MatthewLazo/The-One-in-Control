Game = require 'game'


function love.load()

    Game.SceneManager:SwitchScene('Level1')
    if Game.SceneManager:returnCurrentScene() ~= null then
        print(Game.SceneManager.returnCurrentScene())
        Game.SceneManager.returnCurrentScene():load()
    end
end

function love.update(dt)
    if Game.SceneManager:returnCurrentScene() ~= null then
        Game.SceneManager:returnCurrentScene():update(dt)
    end
end

function love.draw()
    if Game.SceneManager:returnCurrentScene() ~= null then
        Game.SceneManager:returnCurrentScene():draw()
    end
end