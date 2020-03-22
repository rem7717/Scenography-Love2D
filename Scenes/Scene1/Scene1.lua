local Scene1 = {}

local Sketch = require("sketch")

function Scene1.Load()

end 

function Scene1.Update()
  Sketch.RunScene("Scene0")   -- to run another scene (that have been already loaded/Run) 
  
end

function Scene1.Draw()
  
end


return Scene1