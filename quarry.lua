
term.write("lado del cuadrado a minar : ")
local side = tonumber( read() )-- obtener lado del cuadrado a minar
term.write("profundidad de la quarry : ")
local height = tonumber( read() )-- obtener profundidad de la quarry


local turnTo = 1 --flag para indicar a donde dara la vuelta
local i = 1
local j = 1
local times = 1
while height > 0 do
    for i = 1, side, 1 do

        for j = 1, side - 1, 1 do
            turtle.digDown()
            if turtle.forward() == false then
                turtle.dig()
                turtle.forward()
            end
        end
        if times == side then
            
            if side % 2 == 0 then 
                turtle.turnLeft()
            elseif turnTo < 0 then
                turtle.turnLeft()
            else 
                turtle.turnRight()
            end
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
        --height = height -1
    end
    height = height -1
end
