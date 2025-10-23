local Level = {}
Level.__index = Level

local player 
local playerStartPos = {love.graphics.getWidth()/2, 0}

function Level:create(name)
    local instance = {
        levelName = name,
        enemies = {},
        background = null
    }
    setmetatable(instance, Level)
    return instance
end

function Level:load()
    player = Game.Entities.Player
    player:load()
    player:setPosition(playerStartPos[1], playerStartPos[2])
end

function Level:update(dt)
    player:update(dt)
end

function Level:draw()
    love.graphics.rectangle('fill', 250, 0, 300, love.graphics.getHeight())
    player:draw()
end

return Level