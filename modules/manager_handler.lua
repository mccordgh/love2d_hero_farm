local mouseManager = require("modules.input.mouse_manager")
local stateManager = require("modules.states.state_manager")
local world = require("modules.worlds.world_one")

local managerHandler = {}

function managerHandler.init(game)
    managerHandler.game = game;

    -- managerHandler.entityManager = null;
    -- managerHandler.monsterManager = null;
    -- managerHandler.mouseManager = null;
    managerHandler.stateManager = null;
    -- managerHandler.uiManager = null;
    managerHandler.world = null;
end

function managerHandler.createMouseManager()
    local _mouseManager = mouseManager.create()

    _mouseManager.init()

    return _mouseManager
end

function managerHandler.createStateManager()
    local _stateManager = stateManager.create()

    _stateManager.init(managerHandler)

    return _stateManager
end

function managerHandler.createWorld()
    local _world = world.create()

    _world.init(managerHandler)

    return _world
end

function managerHandler.getGame()
    return managerHandler.game
end

function managerHandler.getMouseManager()
    return mouseManager
end

function managerHandler.getStateManager()
    return stateManager
end

function managerHandler.getWorld()

end

function managerHandler.event(type, data)
    if type == "mouse_pressed" then
        -- this.entityManager.mouseClick(data);
    end

    if type == "mouse_released" then
        -- this.entityManager.mouseMove(data);
    end
end

return managerHandler
