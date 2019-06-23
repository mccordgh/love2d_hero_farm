Class = require('libraries.hump.class')

require("modules.handler")

Game = Class {
    init = function(self)
        self.handler = Handler(self)
        self.paused = false
    end;

    update = function(self, deltaTime)
        if (not paused) then
            self.handler:getStateManager():getState():update(deltaTime)
        end
    end;

    draw = function(self)
        if (not paused) then
            local cam = self.handler:getCamera()

            cam:attach()

            self.handler:getStateManager():getState():draw()

            cam:detach()
        end
    end;

    mousepressed = function(self, x, y, button, isTouch)
        if (not paused) then
            self.handler:mousepressed(x, y, button, isTouch)
        end
    end;

    mousereleased = function(self, x, y, button, isTouch)
        if (not paused) then
            self.handler:mousereleased(x, y, button, isTouch)
        end
    end;

    focus = function(self, focused)
        if (not focused) then
            self.paused = true
        else
            self.paused = false
        end
    end;

    quit = function(self)
        return true
        -- cleanup and end the game
    end;
}
