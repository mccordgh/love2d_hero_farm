require('modules.states.state_manager')
require('modules.worlds.world_manager')

handler = Class{
    init = function(self, game)
        self.game = game

        self.stateManager = StateManager(self)
        self.worldManager = WorldManager(self)
    end;

    event = function(self, event)
        --
    end;

    mousepressed = function(self, x, y, button, isTouch)
        -- self.mouseManager.mousePressed(x, y, button, isTouch)
        -- mouse_pressed = true
    end;

    mousereleased = function(self, x, y, button, isTouch)
        -- self.mouseManager.mouseReleased(x, y, button, isTouch)
    end;

    getStateManager = function(self)
        return self.stateManager
    end;

    getWorldManager = function(self)
        return self.worldManager
    end;
}
