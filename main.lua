Game = require 'game'

function love.load()
    Game.SceneManager:SwitchScene('Level1')
    --if Game.SceneManager.currentScene ~= null then
        Game.SceneManager.currentScene:load()
    --end
end

function love.update(dt)
    if Game.SceneManager.currentScene ~= null then
        Game.SceneManager.currentScene:update(dt)
    end
end

function love.draw()
    if Game.SceneManager.currentScene ~= null then
        Game.SceneManager.currentScene:draw()
    end
end