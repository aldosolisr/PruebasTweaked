local turnTo = 1 --flag para indicar a donde dara la vuelta
local i = 1
local j = 1
while true do
for i = 1, 16, 1 do

    for j = 1, 15, 1 do
        turtle.digDown()
        turtle.forward()
    end

    if turnTo > 0 then
        turtle.turnLeft()
        turtle.digDown()
        turtle.forward()
        turtle.turnLeft()
        turnTo = turnTo * -1
    
    elseif turnTo < 0 then 
        turtle.turnRight()
        turtle.digDown()
        turtle.forward()
        turtle.turnRight()
        turnTo = turnTo * -1
    end
end
    turtle.down()
      turtle.turnRight()
end
