local world = {}

function world.create()
    local _world = {}

    function _world.init(managerHandler)
        _world.managerHandler = managerHandler
        _world.map = _world.createRandomMap()
    end

    function _world.update()

    end

    function _world.draw()
        love.graphics.print('world draw!', 200, 200)
    end

    function _world.createRandomMap()
        return nil
        -- _world.managerHandler.getGame().
    end

    return _world
end

return world
