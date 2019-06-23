Class = require('libraries.hump.class')

require("modules.handler")

Game = Class {
    init = function(self)
        self.handler = handler(self)
    end;

    update = function(self, deltaTime)
        self.handler:getStateManager():getState():update(deltaTime)
    end;

    draw = function(self)
        self.handler:getStateManager():getState():draw()
    end;

    mousepressed = function(self, x, y, button, isTouch)
        self.handler:mousepressed(x, y, button, isTouch)
        -- mouse_pressed = true

        -- if x > (game.width / 2) then
        --     x_dir = 1
        -- else
        --     x_dir = -1
        -- end
    end;

    mousereleased = function(self, x, y, button, isTouch)
        self.handler:mousereleased(x, y, button, isTouch)
        -- mouse_pressed = false

        -- x_dir = 0
    end;

    focus = function(self, focused)
        -- if not focused then
        --     paused = true
        -- else
        --     paused = false
        -- end
    end;

    quit = function(self)
        return true
        -- cleanup and end the game
    end;
}
