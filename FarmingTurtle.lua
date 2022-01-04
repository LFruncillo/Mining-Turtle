function returnStart()
    turtle.turnRight()
    for i = 1, 9 do 
        turtle.forward()
    end
    turtle.turnRight()
    turtle.forward()
end

function getInvIndex(invItemName)
    for i = 1, 16, 1 do
        turtle.select(i)
        invItem, data = turtle.getItemDetail()
        if(invItem) then
            if(invItem['name'] == invItemName) then
                turtle.place()
            end
        end
    end
end

function getItemIndex(itemName)
    item, data = turtle.inspect()
    if(data['name'] == itemName) then
        returnStart()
    end
end

function detectDig()
    checkBlock, data = turtle.inspect()

    if(checkBlock) then
        if (data['state']['age'] == 7) then
            if turtle.detect() then
                turtle.dig()

            end
        end
    end

    if (data['name'] == 'minecraft:cobblestone') then
        if turtle.detect() then
            turtle.dig()
        end
    end
end

function rowReturn()
    for i = 1, 7 do
        turtle.forward()
    end
end

turtle.turnRight()
turtle.turnRight()
turtle.forward()
turtle.turnLeft()
turtle.forward()
turtle.turnRight()

while turtle.detectDown() do
    for i = 1, 7 do
        turtle.forward()
        turtle.turnLeft()
        detectDig()
        getInvIndex('minecraft:wheat_seeds')
        turtle.turnRight()
        turtle.turnRight()
        detectDig()
        getInvIndex('minecraft:wheat_seeds')
        turtle.turnLeft()
    end

    turtle.turnLeft()
    turtle.turnLeft()
    rowReturn()

    turtle.turnRight()

    for i = 1, 3 do
        turtle.forward()
    end

    turtle.turnRight()

    getItemIndex('minecraft:cobblestone')
end

for i = 1, 16, 1 do
    turtle.select(i)
    turtle.dropDown()
end