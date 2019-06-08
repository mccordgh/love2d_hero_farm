GameState = Class {
    init = function(self, handler)
        self.handler = handler
    end;

    update = function(self, deltaTime)
        self.handler:getWorldManager():getWorld():update(deltaTime)
    end;

    draw = function(self)
        self.handler:getWorldManager():getWorld():draw()
    end;
}
