SNAKE_SPEED = 100
local snakeX, snakeY = 0, 0
local snakeMoving = 'right'

function love.load()
    love.window.setTitle('snake50')
end

function love.keypressed(key)
    if key=='escape' then
        love.event.quit()
    end

    if key == 'left' then
        snakeMoving = 'left'
    elseif key == 'right' then 
        snakeMoving = 'right'
    elseif key == 'up' then
        snakeMoving = 'up'
    elseif key == 'down' then
        snakeMoving = 'down'
    end
end

function love.update(dt)
    if snakeMoving == 'left' then
        snakeX = snakeX - SNAKE_SPEED * dt;
    elseif snakeMoving == 'right' then
        snakeX = snakeX + SNAKE_SPEED * dt;
    elseif snakeMoving == 'up' then 
        snakeY = snakeY - SNAKE_SPEED * dt;
    elseif snakeMoving == 'down' then
        snakeY = snakeY + SNAKE_SPEED * dt;
    end
end

function love.draw()
    love.graphics.setColor(0,1,0,1)
    love.graphics.rectangle('fill', snakeX, snakeY, 16, 16)
end