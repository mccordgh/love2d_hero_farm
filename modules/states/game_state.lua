local gameState = {}

function gameState.create()
    local _gameState = {}

    function _gameState.init(managerHandler, world)
        _gameState.managerHandler = managerHandler;
        _gameState.world = world;
    end

    function _gameState.update(deltaTime)
        _gameState.world.update(deltaTime);
    end

    function _gameState.draw()
        _gameState.world.draw();
    end

    return _gameState
end

return gameState
