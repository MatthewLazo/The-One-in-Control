local Level = {}
Level.__index = Level

local player 
local playerStartPos = {love.graphics.getWidth()/2, 0}

local enemies = {}

-- Time Tasks
 local levelStartWait 

function Level:create(name)
    local instance = {
        levelName = name,
        enemyList = {},
        background = null
    }
    setmetatable(instance, Level)
    return instance
end

function Level:load()
    Game.GameManager:changeState("PreAction")

    levelStartWait = Game.Time:waitFor(2)

    player = Game.Entities.Player
    player:load()
    player:setPosition(playerStartPos[1], playerStartPos[2])

end

function Level:update(dt)
    if Game.GameManager:returnGameState() == 1 then
        if Game.Time:isTimeTaskDone(levelStartWait) then
            Game.GameManager:changeState("Action")
        end
    end
    player:update(dt)
end

function Level:draw()
    love.graphics.rectangle('fill', 250, 0, 300, love.graphics.getHeight())
    player:draw()
end

return Level