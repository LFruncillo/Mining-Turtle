while turtle.detectDown() do
    for i = 1, 11 do
        turtle.digDown()
        turtle.forward()
        turtle.digDown()
    end
    turtle.turnRight()
    turtle.forward()
    turtle.turnRight()
    turtle.down()
    
    fuelLevel = turtle.getFuelLevel()
    print(fuelLevel)
    if fuelLevel<=50 then
        turtle.select(1)
        turtle.refuel(1)
        print("Turtle refueled")
    end

    itemCount = turtle.getItemCount(16)
    if itemCount>=1 then
        while true do
            turtle.up()
        end
    end
end

while true do
    turtle.up()
end