local GameObject = {}

GameObject.Position = { x=0, y=0, w=0, h=0 }
GameObject.Tag = {}
GameObject.PhysicsCaracteristics = {}

function GameObject:new(p_gameObject) 
  p_gameObject = p_gameObject or self
  setmetatable(p_gameObject, self)
  self.__index = self
  return p_gameObject
end

function GameObject.Tag:add(p_tagName)
  self[p_tagName] = true
end

function GameObject.Tag:Remove(p_tagName)
  if self[p_tagName] then
    self[p_tagName] = false
  end
end

function GameObject:setPosition(x, y, camera)
  self.Position.x = x or self.Position.x
  self.Position.y = y or self.Position.y
  
  if not camera == nil then
    if camera.isFollowingObject == true and camera.GameObject == self then
      camera:setPosition(self.Position.x, self.Position.y)
    end
  end
end

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