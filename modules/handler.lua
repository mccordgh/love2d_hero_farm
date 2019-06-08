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

-- function handler.createMouseManager()
--     local _mouseManager = mouseManager.create()

--     _mouseManager.init()

--     return _mouseManager
-- end

-- function handler.createStateManager(state)
--     local stateManager = StateManager(state)

--     return stateManager
-- end

-- function handler.createWorld()
--     local _world = world.create()

--     _world.init(handler)

--     return _world
-- end

-- function handler.getGame()
--     return handler.game
-- end

-- function handler.getMouseManager()
--     return mouseManager
-- end

-- function handler.getStateManager()
--     return stateManager
-- end

-- function handler.getWorld()

-- end

-- function handler.event(type, data)
--     if type == "mouse_pressed" then
--         -- this.entityManager.mouseClick(data);
--     end

--     if type == "mouse_released" then
--         -- this.entityManager.mouseMove(data);
--     end
-- end

-- return handler
