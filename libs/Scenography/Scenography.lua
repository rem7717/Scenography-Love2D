local Scenography = {}

Scenography.ScenesLists = {}
Scenography.GlobalVar = {} 

Scenography.Object = {}
Scenography.Object = require("libs/Scenography/GameObjects/GameObject")

Scenography.Camera = {}
Scenography.Camera = require("libs/Scenography/Camera/Camera")

Scenography.Container = {}
Scenography.Container = require("libs/Scenography/Decors/Container")


function Scenography.LoadNewScene(p_SceneName)
  if(Scenography.ScenesLists[p_SceneName] == nil) then
    Scenography.ScenesLists[p_SceneName] = require( "src/Scenes/" .. p_SceneName .. "/" .. p_SceneName)
    Scenography.ScenesLists[p_SceneName].Load()
  end
end

function Scenography.RunScene(p_SceneName)
  Scenography.SceneToRun = p_SceneName
end

Scenography.SceneToRun = "Scene0"   -- It's the one by default

return Scenography
