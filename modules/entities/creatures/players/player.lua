require("modules.entities.creatures.creature")

Player = Class {
    __includes = Creature,

    init = function(self, handler, x, y, width, height)
        Creature:init(handler, x, y, width, height)

        self.handler = handler
        self.x = x
        self.y = y
        self.width = width
        self.height = height
    end;

    update = function(self, dt)
        --
    end;

    draw = function(self)
        love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
    end;
}
