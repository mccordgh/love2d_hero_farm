local stateManager = {}

function stateManager.create()
    _stateManager = {}

    function _stateManager.init()
        _stateManager.currentState = nil
    end

    function _stateManager.getState()
        return _stateManager.currentState
    end

    function _stateManager.setState(state)
        _stateManager.currentState = state
    end

    return _stateManager
end

return stateManager
