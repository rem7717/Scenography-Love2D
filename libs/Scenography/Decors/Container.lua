local container = {}
container.__index = container

--[[

CONSTRUCTOR for the Container
=============================
  x: The X coordinate of the container
  y: The Y coordinate of the container

------
RETURN: 
  container: a new Container

--]]
function container.new(x, y)
  x = x or 0
  y = y or 0

  return setmetatable({
      x = x;
      y = y;
      width = 0;
      height = 0;
      rowsNb = 0;
      columnsNb = 0;
     },
    container
  )

end


--[[

Method to set the width of the container
=============================
  width: the width of the container

------
RETURN: Nothing

--]]
function container:setWidth(width)
  self.width = width
end


--[[

Method to set the Height of the container
=============================
  height: the height of the container

------
RETURN: Nothing

--]]
function container:setHeight(height)
  self.height = height
end


--[[

Method to set the number of rows of the container
=============================
  rowsNb: the number of rows of the container

------
RETURN: Nothing

--]]
function container:setRowsNb(rowsNb)
  self.rowsNb = rowsNb
end


--[[

Method to set the number of columns of the container
=============================
  columnsNb: the number of columns 

------
RETURN: Nothing

--]]
function container:setColumnsNb(columnsNb)
  self.columnsNb = columnsNb
end


--[[

Method to get the coordinates of a point in 
the container (columns and rows) of the container
=============================
  columnsNb: the columns that we want to get the position
  rowsNb: the row that we want to get the position
  columnAlignment: the alignment of the columns (ex: "left", "center" or "right")
  rowAlignment: the alignment of the row (ex: "top", "center" or "bottom")

------
RETURN:
  x: x coordinate of the point
  y: y coordinate of the point

--]]
function container:getPointPosition(columnsNb, rowsNb, columnAlignment, rowAlignment)
  columnAlignment = columnAlignment or "left"
  rowAlignment = rowAlignment or "top"
  widthColumn = self.width / self.columnsNb
  heightRow = self.height / self.rowsNb
  
  if columnAlignment == "right" then
    columnAdd = 0
  else 
    columnAdd = 1
  end

  if rowAlignment == "bottom" then
    rowAdd = 0
  else 
    rowAdd = 1
  end

  if columnAlignment == "center" then
    widthColumn = widthColumn / 2
  end

  if rowAlignment == "center" then
    heightRow = heightRow / 2
  end

  xPosition = widthColumn * (columnsNb - columnAdd)
  yPosition = heightRow * (rowsNb - rowAdd)

  if self.columnsNb < columnsNb then
    xPosition = nil
  end

  if self.rowsNb < rowsNb then
    yPosition = nil
  end

  return xPosition, yPosition

end

return container