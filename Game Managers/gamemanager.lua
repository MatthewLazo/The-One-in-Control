local GameManager = {}

local gameStates = {
    PreAction=1,
    Action=2,
    Break=3,
    Cutscene=4
}

local gameState = gameStates.Action

function GameManager:returnGameState() return gameState end
function GameManager:changeState(stateName) gameState = gameStates[stateName] end

return GameManager