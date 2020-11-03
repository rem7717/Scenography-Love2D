camera = {}


camera.new = function()
  local self = {}
  
  self.x = 0
  self.y = 0
  self.scaleX = 1 
  self.scaleY = 1
  self.rotation = 0
  self.isFollowingObject = false
  self.GameObject = nil

  self.paddingGameObject = {
    top = 0, right = 0, bottom = 0, left = 0
  }
  
  
  function self:set()
    love.graphics.push()
    love.graphics.rotate(-self.rotation)
    love.graphics.scale(self.scaleX, self.scaleY)
    love.graphics.translate(-self.x, -self.y)
  end

  function self:unset()
    love.graphics.pop() 
  end

  function self:move(dx, dy)
    self.x = self.x + (dx or 0)
    self.y = self.y + (dy or 0)
  end

  function self:rotate(dr)
    self.rotation = self.rotation + dr
  end

  function self:scale(sx, sy)
    sx = sx or 1
    self.scaleX = self.scaleX * sx
    self.scaleY = self.scaleY * (sy or sx)
  end

  function self:setPosition(x, y)
    self.x = x or self.x
    self.y = y or self.y
  end

  function self:setScale(sx, sy)
    self.scaleX = sx or self.scaleX
    self.scaleY = sy or self.scaleY
  end

  function self:updatePositionFromObject()
    if not self.GameObject == nil then
      if self.isFollowingObject == true then
        self:setPosition(self.x-self.paddingGameObject.left,self.y-self.paddingGameObject.top)
      end
    end
  end

  return self
end 

return camera
