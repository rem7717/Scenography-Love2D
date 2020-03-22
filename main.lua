local Sketch = require("sketch")

function love.load()
  Sketch.LoadNewScene(Sketch.SceneToRun)
  Sketch.RunScene(Sketch.SceneToRun)
  Sketch.ScenesLists[Sketch.SceneToRun].Load()
end

function love.update()
  
  Sketch.ScenesLists[Sketch.SceneToRun].Update()
end

function love.draw()
  
  Sketch.ScenesLists[Sketch.SceneToRun].Draw()
end
