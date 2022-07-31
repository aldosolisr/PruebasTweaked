local turnTo = 1 --flag para indicar a donde dara la vuelta
local i = 1
local j = 1
local times = 1
while true do
for i = 1, 16, 1 do

    for j = 1, 15, 1 do
        turtle.digDown()
        if turtle.forward() == false then
            turtle.dig()
            turtle.forward()
        end
    end
    if times == 16 then
        turtle.turnLeft()
        turtle.digDown()
        turtle.down()
        times = 0
    elseif turnTo > 0 then
        turtle.turnLeft()
        turtle.digDown()
        if turtle.forward() == false then
            turtle.dig()
            turtle.forward()
        end
        turtle.turnLeft()
    elseif turnTo < 0 then 
        turtle.turnRight()
        turtle.digDown()
        if turtle.forward() == false then
            turtle.dig()
            turtle.forward()
        end
        turtle.turnRight()
    end
    times = times + 1
    turnTo = turnTo * -1
end
end
