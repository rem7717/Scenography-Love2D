camera = {}
camera.__index = camera

--[[

CONSTRUCTOR for the camera
=============================
------
RETURN: 
  camera: a new Camera

--]]
function camera.new()
  return setmetatable({
    x = 0;
    y = 0;
    scaleX = 0;
    scaleY = 0;
    rotation = 0;
    isFollowingObject = false;
    GameObject = nil;
    paddingGameObject = { top = 0, right = 0, bottom = 0, left = 0 }
  },
  camera
)
end


--[[

Method to set the camera for the display
=============================
------
RETURN: Nothing

--]]
function camera:set()
  love.graphics.push()
  love.graphics.rotate(-self.rotation)
  love.graphics.scale(self.scaleX, self.scaleY)
  love.graphics.translate(-self.x, -self.y)
end


--[[

Method to remove the camera currently in use for the display
==============================
------
RETURN: Nothing

--]]
function camera:unset()
  love.graphics.pop() 
end


--[[

Method to move the camera
=============================
  dx: the movement on the x axis
  dy: the movement on the y axis

------
RETURN: Nothing

--]]
function camera:move(dx, dy)
  self.x = self.x + (dx or 0)
  self.y = self.y + (dy or 0)
end


--[[

Method to rotate the camera
=============================
  dr: the rotation to add on the camera

------
RETURN: Nothing

--]]
function camera:rotate(dr)
  self.rotation = self.rotation + dr
end


--[[

Method to scale the camera
=============================
  sx: the scale, on the x axis for the Camera
  sy: the scale, on the y axis for the Camera

------
RETURN: Nothing

--]]
function camera:scale(sx, sy)
  sx = sx or 1
  self.scaleX = self.scaleX * sx
  self.scaleY = self.scaleY * (sy or sx)
end


--[[

Method to set the position of the camera
=============================
  x: the new position for the camera, on the x axis
  y: the new position for the camera, on the y axis

------
RETURN: Nothing

--]]
function camera:setPosition(x, y)
  self.x = x or self.x
  self.y = y or self.y
end


--[[

Method to set the scale of the camera
=============================
  sx: the new scale for the camera, on the x axis
  sy: the new scale for the camera, on the y axis

------
RETURN: Nothing

--]]
function camera:setScale(sx, sy)
  self.scaleX = sx or self.scaleX
  self.scaleY = sy or self.scaleY
end


--[[

Method to update the position from the gameObject
=============================
------
RETURN: Nothing

--]]
function camera:updatePositionFromObject()
  if not self.GameObject == nil then
    if self.isFollowingObject == true then
      self:setPosition(self.x-self.paddingGameObject.left,self.y-self.paddingGameObject.top)
    end
  end
end

return camera
