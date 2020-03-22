local Sketch = {}

Sketch.ScenesLists = {}

Sketch.GlobalVar = {} 

function Sketch.LoadNewScene(p_SceneName)
  if(Sketch.ScenesLists[p_SceneName] == nil) then
    Sketch.ScenesLists[p_SceneName] = require( "Scenes/" .. p_SceneName .. "/" .. p_SceneName)
  end
end

function Sketch.RunScene(p_SceneName)
  Sketch.SceneToRun = p_SceneName
end

Sketch.SceneToRun = "Scene0"

return Sketch