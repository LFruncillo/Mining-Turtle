function detectBlock()
    if turtle.detect() then
        turtle.dig()
    end
end

function goBack()
    turtle.turnLeft()
    for i = 1, 13 do
        turtle.forward()
    end
    turtle.turnRight()
end

function returnStart()
    turtle.turnLeft()
    turtle.turnLeft()
    while true do
        turtle.forward()
    end
end

function checkInv()
    turtle.select(16)
    invFull = turtle.getItemCount()
    if invFull>=1 then
        turtle.select(1)
        returnStart()
    else
        turtle.select(1)
    end
end

turtleFuel = turtle.getFuelLevel()

while turtleFuel>=300 do
    if turtle.detect() then
        for i = 1, 13 do
            turtle.dig()
            turtle.turnRight()
            turtle.forward()
            turtle.turnLeft()
            detectBlock()
        end
    end

    goBack()

    checkInv()

    turtle.up()

    if turtle.detect() then
        print("Still mining")
    else
        for i = 1, 3 do
            turtle.down()
        end
    end

    turtle.forward()
end

returnStart()