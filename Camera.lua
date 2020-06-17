camera = {}
camera.x = 0
camera.y = 0
camera.scaleX = 1
camera.scaleY = 1
camera.rotation = 0
camera.isFollowingObject = false
camera.GameObject = nil

camera.paddingGameObject = {
  top = 0, right = 0, bottom = 0, left = 0
}

function camera:new(p_camera) 
  p_camera = p_camera or self
  setmetatable(p_camera, self)
  self.__index = self
  return p_camera
end 

function camera:set()
  love.graphics.push()
  love.graphics.rotate(-self.rotation)
  love.graphics.scale(self.scaleX, self.scaleY)
  love.graphics.translate(-self.x, -self.y)
end

function camera:unset()
  love.graphics.pop() 
end

function camera:move(dx, dy)
  self.x = self.x + (dx or 0)
  self.y = self.y + (dy or 0)
end

function camera:rotate(dr)
  self.rotation = self.rotation + dr
end

function camera:scale(sx, sy)
  sx = sx or 1
  self.scaleX = self.scaleX * sx
  self.scaleY = self.scaleY * (sy or sx)
end

function camera:setPosition(x, y)
  self.x = x or self.x
  self.y = y or self.y
end

function camera:setScale(sx, sy)
  self.scaleX = sx or self.scaleX
  self.scaleY = sy or self.scaleY
end

function camera:updatePositionFromObject()
  if not self.GameObject == nil then
    if self.isFollowingObject == true then
      self:setPosition(self.x-self.paddingGameObject.left,self.y-self.paddingGameObject.top)
    end
  end
end

return camera