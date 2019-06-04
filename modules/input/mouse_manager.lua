local mouseManager = {}

function mouseManager.init(managerHandler)
    mouseManager.managerHandler = managerHandler;
end

-- function mouseManager.getMouseXFromEvent(event) {
--     return event.offsetX;
-- }

-- getMouseYFromEvent(event) {
--     return event.offsetY;
-- }

function mouseManager.mousePressed(x, y, button, isTouch)
    mouseManager.managerHandler.event('mouse_pressed', {
        x =  x,
        y =  y,
        button = button,
        isTouch = isTouch
    })
end

function mouseManager.mouseReleased(x, y, button, isTouch)
    mouseManager.managerHandler.event('mouse_released', {
        x =  x,
        y =  y,
        button = button,
        isTouch = isTouch
    })
end

return mouseManager
