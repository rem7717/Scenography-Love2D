# Scenography-Love2D
Scenography is a library (A Lua Module) that allows using Scene and various utilities with the LÖVE framework.

---
## How to use it ?
1. You should start by downloading/cloning/etc this repo
2. This repo is now ready to be used as a project folder
3. the Scene's file are in the `src/` folder of the project, and each scene have his own folder (the name of the folder IS THE SAME as the name of the scene's file)
4. The documentation and various examples of a Scene's file is in the Scene0.lua's file, so you should check it out first.
5. all your assets should preferably be put in the rsrc's folder, according of the type (ex: assets, shader, sounds, etc). 
6. That's it! It should works properly in a small LÖVE 2D project :thumbsup:.

### Structure of a Scene's file
- Use this following structure:
  ```lua
  local Scene1 = {}   
  local Scenography = require("libs/Scenography/Scenography")

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


#### How to use the other utilities?
The documentation is in the [```Scene0.lua's file```](https://github.com/rem7717/Scenography-Love2D/blob/master/src/Scenes/Scene0/Scene0.lua) (it contains various example, and its the default's starting scene in Scenography) 

---

### License:
- The MIT License, read the ```LICENSE.txt``` file for details.

### Important Note:
- I made this little project just for fun and in spare time. I updated it as my experiment for the [Experimentation's Jam 1](https://itch.io/jam/experimentations-jam), where I implemented ```Camera.lua``` and ```GameObject.lua``` to the project.
