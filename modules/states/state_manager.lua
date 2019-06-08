require("modules.states.game_state")

StateManager = Class{
    init = function(self, handler)
        self.handler = handler
        self.currentState = GameState(handler)
    end;

    getState = function(self)
        return self.currentState
    end;

    setState = function(self, state)
        self.currentState = state
    end;
}
