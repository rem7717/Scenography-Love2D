# Scenography-Love2D
Scenography is a library (A Lua Module) that allows using Scene with the LÖVE framework, with other UI utilities (still in development).

---
## How to use it?
1. You need to setup the files and the directory in your project like this:
  ```
  |-> Scenes
    |-> Scene0
      - Scene0.lua
      - (Assets for the Scene)
    |-> SceneName
      - SceneName.lua
      - (Assets for the Scene)
    |-> (Others Scene...)
      - ...
      - ...
  - main.lua
  - sketch.lua
  ```
2. You need to use the ```main.lua``` files and the ```sketch.lua``` include in the project (because Scenography is just using Lua Module)
    
3. Use the existing structures for all the Scene's ```.lua``` files.
  ```lua
  local Scene1 = {}   
  local Sketch = require("sketch")

  function Scene1.Load()
    -- Put some code here...
  end 

  function Scene1.Update()
    -- Put some code here... 
  end

  function Scene1.Draw()
    -- Put some code here...
  end
  
  return Scene1
  ```
  > **notes:** The Scene's name can be anything that you want, but it should be the same as the scene folder's name and Scene file's name.

4. That's it! It should works properly in a small LÖVE 2D project :thumbsup:.

---

### License:
- The MIT License, read the ```LICENSE.txt``` file for details.

### Important Note:
- I made this little project just for fun and in spare time.
