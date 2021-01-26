local Scenography = require("libs/Scenography/Scenography")
local Scene0 = {}

--// Global Variable's declaration (available in all scene)
--[[ To declare one:

  Scenography.GlobalVar.NameOfTheVariable = VALUE
  
  Scenography.GlobalVar.FOO  = "BAR"

--]]

--// gameloop's Functions 
function Scene0.Load()
  -- Put some code ...  
  
  --[[
    --// How To Create a new Game Object
  yourObject = Scenography.Object:new()
  
    --// How To Set a Tag on the Game Object
  yourObject.Tag:add('Tests')
  
    --// How To Set Verify if your Game Object have this Tag
  print(yourObject.Tag["Tests"])    -- Will print true on the screen
  
    --// How To Set the Position and the Size of the Game Object
  yourObject.Position.x = 50
  yourObject.Position.y = 40
  yourObject.Position.w = 300
  yourObject.Position.h = 100
  
    --// How To Add custom Variables to the Game Object  
  yourObject.customVariables = 0
  
    --// How To Move the Game Object  
  yourObject:move(dx,dy) 
    
    --// How To Set the Position of the Game Object  
  yourObject:setPosition(x,y) 

    --// How To Create a new Camera
  testCamera = Scenography.Camera:new()
  
    --// How To Link a Game Object To the Camera
  testCamera.GameObject = yourObject
  
    --// How To Disable the auto-movement of the Camera when the Game Object move
  testCamera.isFollowingObject = false
  
  --]]
  print("TEST du fichier Scene0.lua -- Camera et GameObject")  
  Camera1 = Scenography.Camera.new()
  Camera2 = Scenography.Camera.new()
  
  Camera1.x = 15
  Camera2.x = 202020
  print("Camera1.x = ", Camera1.x)
  print("Camera2.x = ", Camera2.x)

  obj1 = Scenography.Object.new()

  obj1:addTag("Objet1")
  
  obj2 = Scenography.Object.new()
  obj2:addTag("Objet2")

  print(obj1.Tag["Objet1"])
  print(obj1.Tag["Objet2"])
  print(obj2.Tag["Objet1"])
  print(obj2.Tag["Objet2"])

  print("TEST du fichier Scene0.lua - Container")
  
  container1 = Scenography.Container.new(0, 0)
  container1:setWidth(800)
  container1:setHeight(600)
  container1:setColumnsNb(4)
  container1:setRowsNb(3)
  
end

function Scene0.Update()
  -- Put some code ...  

  --[[Load the next scene
    Scenography.LoadNewScene("Scene1")
    Scenography.RunScene("Scene1")
  --]]
end

function Scene0.Draw()
  -- Put some code ...    
  --love.graphics.rectangle("fill", container1.x, container1.y, container1.width, container1.height)
  x1, y1 = container1:getPointPosition(1,2, "left", "center")
  x2, y2 = container1:getPointPosition(2,2, "right", "bottom")
  x3, y3 = container1:getPointPosition(3,2, "right")
  x4, y4 = container1:getPointPosition(4,2, "right")

  love.graphics.circle("fill", x1, y1, 10)
  love.graphics.circle("fill", x2, y2, 10)
  love.graphics.circle("fill", x3, y3, 10)
  love.graphics.circle("fill", x4, y4, 10)

  --x1, y1 = container1:getPointPosition(1,2)
  --x2, y2 = container1:getPointPosition(2,2)
  --x3, y3 = container1:getPointPosition(3,2)
  --x4, y4 = container1:getPointPosition(4,2)
--
  --love.graphics.circle("fill", x1, y1, 10)
  --love.graphics.circle("fill", x2, y2, 10)
  --love.graphics.circle("fill", x3, y3, 10)
  --love.graphics.circle("fill", x4, y4, 10)
--
--
  --x1, y1 = container1:getPointPosition(1,3)
  --x2, y2 = container1:getPointPosition(2,3)
  --x3, y3 = container1:getPointPosition(3,3)
  --x4, y4 = container1:getPointPosition(4,3)

  --love.graphics.circle("fill", x1, y1, 10)
  --love.graphics.circle("fill", x2, y2, 10)
  --love.graphics.circle("fill", x3, y3, 10)
  --love.graphics.circle("fill", x4, y4, 10)

end

return Scene0
