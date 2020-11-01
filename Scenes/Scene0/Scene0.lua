local Scenography = require("Scenography")
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
  
  obj1 = Scenography.Object.new()
  
  obj1.Tag:add("Objet1")
  
  
  obj2 = Scenography.Object.new()
  obj2.Tag:add("Objet2")

  print(obj1.Tag["Objet1"])
  print(obj1.Tag["Objet2"])
  print(obj2.Tag["Objet1"])
  print(obj2.Tag["Objet2"])



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

end

return Scene0
