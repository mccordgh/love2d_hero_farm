local mouseManager = {}

function mouseManager:create()
    _mouseManager = {}

    function _mouseManager:init(managerHandler)
        _mouseManager.managerHandler = managerHandler;
    end

    function _mouseManager:mousePressed(x, y, button, isTouch)
        _mouseManager.managerHandler.event('mouse_pressed', {
            x =  x,
            y =  y,
            button = button,
            isTouch = isTouch
        })
    end

    function _mouseManager:mouseReleased(x, y, button, isTouch)
        _mouseManager.managerHandler.event('mouse_released', {
            x =  x,
            y =  y,
            button = button,
            isTouch = isTouch
        })
    end
end

return mouseManager
