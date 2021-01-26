GameObject = {}
GameObject.__index = GameObject

--[[

CONSTRUCTOR for a GameObject
=============================
------
RETURN: 
  gameObject: a GameObject

--]]
function GameObject.new()
  return setmetatable({
      Position = { x=0, y=0, w=0, h=0 };
      Tag = {};
      PhysicsCaracteristics = {};
    },
    GameObject
  )

end 


--[[

Method to add a tag to a gameObject
=============================
  tagName: the tag that we want to add to the object

------
RETURN: Nothing

--]]
function GameObject:addTag(tagName) 
  self.Tag[tagName] = true 
end


--[[

Method to remove a tag from a gameObject
=============================
  tagName: the tag that we want to remove from the object

------
RETURN: Nothing

--]]
function GameObject:removeTag(tagName)
  if self.Tag[tagName] then
    self.Tag[tagName] = false
  end
end


--[[

Method to set the position of a gameObject
=============================
  x: the new x position of the object
  y: the new y position of the object
  camera: if you want to set the position of the camera, you can 
    put the camera here

------
RETURN: Nothing

--]]
function GameObject:setPosition(x, y, camera)
  self.Position.x = x or self.Position.x
  self.Position.y = y or self.Position.y
  
  if not camera == nil then
    if camera.isFollowingObject == true and camera.GameObject == self then
      camera:setPosition(self.Position.x, self.Position.y)
    end
  end
end


--[[

Method to move a gameObject
=============================
  dx: the movement on the X axis of the object
  dy: the movement on the Y axis of the object
  camera: if you want to move the camera, you can 
    put the camera here

------
RETURN: Nothing

--]]
function GameObject:move(dx, dy, camera)
  self.Position.x = self.Position.x + (dx or 0)
  self.Position.y = self.Position.y + (dy or 0)
  
  if not camera == nil then
    if camera.isFollowingObject == true and camera.GameObject == self then
      camera:setPosition(self.Position.x, self.Position.y)
    end
  end
end
  
return GameObject