local Scenography = require("libs/Scenography/Scenography")

function love.load()
  Scenography.LoadNewScene(Scenography.SceneToRun)
  Scenography.RunScene(Scenography.SceneToRun)
end

function love.update()
  
  Scenography.ScenesLists[Scenography.SceneToRun].Update()
end

function love.draw()
  
  Scenography.ScenesLists[Scenography.SceneToRun].Draw()
end

