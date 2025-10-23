local GameManager = {}

local gameStates = {
    Action,
    Break,
    Cutscene
}
local gameState = gameStates.Action

function GameManager:returnGameState() return gameState end