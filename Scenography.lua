local Scenography = {}

Scenography.ScenesLists = {}
Scenography.GlobalVar = {} 

Scenography.Object = {}
Scenography.Object = require("GameObject")

Scenography.Camera = {}
Scenography.Camera = require("Camera")

--[[ Useless for the moment, it will maybe be useful in a next version
Scenography.Physics = {}
Scenography.Physics = require("PhysicsWorld")
--]]

function Scenography.LoadNewScene(p_SceneName)
  if(Scenography.ScenesLists[p_SceneName] == nil) then
    Scenography.ScenesLists[p_SceneName] = require( "Scenes/" .. p_SceneName .. "/" .. p_SceneName)
    Scenography.ScenesLists[p_SceneName].Load()
  end
end

function Scenography.RunScene(p_SceneName)
  Scenography.SceneToRun = p_SceneName
end

Scenography.SceneToRun = "Scene0"

return Scenography
