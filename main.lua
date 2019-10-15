function love.load()
    love.window.setTitle('snake50')
end

function love.keypressed(key)
    if key=='escape' then
        love.event.quit()
    end
end

function love.update(dt)

end

function love.draw()
    love.graphics.rectangle('fill', 0, 0, 16, 16)
end
