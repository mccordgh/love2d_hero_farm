local stateManager = {}

function stateManager.init()
    stateManager.currentState = nil
end

function stateManager.getState()
    return stateManager.currentState
end

function stateManager.setState(state)
    stateManager.currentState = state
end

return stateManager
