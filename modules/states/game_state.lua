GameState = Class {
    init = function(self, handler)
        self.handler = handler
    end;

    update = function(self, dt)
        self.handler:getWorldManager():getWorld():update(dt)
    end;

    draw = function(self)
        self.handler:getWorldManager():getWorld():draw()
    end;
}
