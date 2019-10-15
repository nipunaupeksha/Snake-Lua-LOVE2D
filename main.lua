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

    if kry == 'left' then
        snakeMoving = 'left'
    else if key == 'right' then 
        snakeMoving = 'right'
    end
end

function love.update(dt)
    if snakeMoving == 'left' then
        snakeX = snakeX - SNAKE_SPEED * dt;
    else 
        snakeX = snakeX + SNAKE_SPEED * dt;
    end
end

function love.draw()
    love.graphics.setColor(0,1,0,1)
    love.graphics.rectangle('fill', snakeX, 0, 16, 16)
end
