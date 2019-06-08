require("modules.game")

local game = Game()

function love.update(deltaTime)
    game:update()
end

function love.draw()
    game:draw()
end

function love.mousepressed(x, y, button, isTouch)
    game:mousepressed(x, y, button, isTouch)
end

function love.mousereleased(x, y, button, isTouch)
    game:mousereleased(x, y, button, isTouch)
end

function love.focus(focused)
    game:focus(focused)
end

function love.quit()
    game:quit()
end
