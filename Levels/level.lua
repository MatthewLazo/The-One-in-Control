Level = {}
Level.__index = Level

local player 
local playerStartPos = {love.graphics.getWidth(), love.graphics.getHeight()}

function Level:new(x,y)
    local instance = {
        x = x or 0,
        x = x or 0,
        enemies = {},
        background = null
    }
    return instance
end

function Level:load()
    player = Game.Entities.Player
    player:setPosition(playerStartPos[1], playerStartPos[2])
end

function Level:update(dt)
end

function Level:draw()
    love.graphics.rectangle('fill', self.x, self.y, love.graphics.getWidth(), love.graphics.getHeight())
end

return Level