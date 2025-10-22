local SceneManager = {}

local scenes = {
    Level1 = require 'Levels/level'
}

local currentScene = scenes.Level1 -- Main Menu


function SceneManager:SwitchScene(sceneKey)
    print(currentScene)
    if currentScene ~= scenes[sceneKey] then
        currentScene = scenes[sceneKey]
    end
end

return SceneManager

