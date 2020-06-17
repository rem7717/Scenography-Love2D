# Scenography-Love2D
Scenography is a library (A Lua Module) that allows using Scene and various utilities with the LÖVE framework.

---
## How to setup the project?
1. You need to setup the files and the directory in your project like this (or clone/download the project):
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
  - Scenography.lua
  - Camera.lua
  - GameObject.lua
  - PhysicsWorld.lua (this file is useless for the moment)
  ```
2. You need to use the ```main.lua``` files and the others ```.lua``` files include in the project (because Scenography is just using various Lua Module)
    
3. Use the existing structures for all the Scene's ```.lua``` files.
  ```lua
  local Scene1 = {}   
  local Scenography = require("Scenography")

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

#### How to use the other utilities?
The documentation is in the [```Scene0.lua's file```](https://github.com/rem7717/Scenography-Love2D/blob/master/Scenes/Scene0/Scene0.lua) (it contains various example, and its the default's starting scene in Scenography) 

---

### License:
- The MIT License, read the ```LICENSE.txt``` file for details.

### Important Note:
- I made this little project just for fun and in spare time. I updated it as my experiment for the [Experimentation's Jam 1](https://itch.io/jam/experimentations-jam), where I implemented ```Camera.lua``` and ```GameObject.lua``` to the project.
