local mouseManager = require("modules.input.mouse_manager")
local stateManager = require("modules.states.state_manager")

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

function managerHandler.createStateManager()
    stateManager.init()

    return stateManager
end

function managerHandler.createMouseManager()
    mouseManager.init()

    return mouseManager
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
