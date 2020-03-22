local Sketch = require("sketch")

local Scene0 = {}

--// Global Variable's declaration (available in all scene)
--[[ To declare one:

  Sketch.GlobalVar.NameOfTheVariable = VALUE
  
  Sketch.GlobalVar.FOO  = "BAR"

--]]


--// gameloop's Functions 
function Scene0.Load()
  -- Put some code ...  

end

function Scene0.Update()
  -- Put some code ...  
  

  --[[ Load the next scene
    Sketch.LoadNewScene("Scene1")
    Sketch.RunScene("Scene1")
    Sketch.ScenesLists["Scene1"].Load()
  --]]
end

function Scene0.Draw()
  -- Put some code ...    

end


return Scene0