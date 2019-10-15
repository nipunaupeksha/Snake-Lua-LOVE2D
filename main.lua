SNAKE_SPEED = 100

TILE_SIZE = 32
WINDOW_WIDTH = 1280
WINDOW_HEIGHT =  720

MAX_TILES_X = WINDOW_WIDTH / TILE_SIZE
MAX_TILES_Y = math.floor(WINDOW_HEIGHT / TILE_SIZE) + 1
local tileGrid = {}
local snakeX, snakeY = 0, 0
local snakeMoving = 'right'

function love.load()
    love.window.setTitle('snake50')
    love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false
    })
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
    drawGrid()
    drawSnake()
end

function drawGrid()
    love.graphics.setColor(0,1,1,1)
    for y = 1,MAX_TILES_Y do
        for x = 1, MAX_TILES_X do
            love.graphics.rectangle('line',(x-1)*TILE_SIZE,(y-1)*TILE_SIZE,TILE_SIZE,TILE_SIZE)
        end
    end
end

function drawSnake()
    love.graphics.setColor(0,1,0,1)
    love.graphics.rectangle('fill', snakeX, snakeY, TILE_SIZE, TILE_SIZE)
end

