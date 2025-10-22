
Player = {}
Player.__index = Player

local speed = 200

function Player:load()
end

function Player:setPosition(x, y)
    self.x = x
    self.y = y
end

function Player:update(dt)
    self:movement(dt)
end

function Player:draw()
    love.graphics.circle('fill', self.x, self.y, 10)
end
function Player:movement(dt)
    if love.keyboard.isDown("a") then self.x = self.x - speed * dt end
     if love.keyboard.isDown("d") then self.x = self.x + speed * dt end
      if love.keyboard.isDown("w") then self.y = self.y - speed * dt end
       if love.keyboard.isDown("s") then self.y = self.y + speed * dt end
end


return Player