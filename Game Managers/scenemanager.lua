local SceneManager = {}
local Level = require 'Levels/level'


local scenes = {
    Level1 = Level:create("level1")
}

local currentScene = scenes.Level1 -- Main Menu

function SceneManager:returnCurrentScene() return currentScene end
function SceneManager:returnSceneList() return scenes end

function SceneManager:SwitchScene(sceneKey)
    print(currentScene)
    if currentScene ~= scenes[sceneKey] then
        currentScene = scenes[sceneKey]
    end
end

return SceneManager

