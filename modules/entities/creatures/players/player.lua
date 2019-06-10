require("modules.entities.creatures.creature")

Player = Class {
    __includes = Creature,

    init = function(self, handler, x, y)
        Creature:init(handler, x, y)

        self.handler = handler
        self.x = x * GameConstants.tileWidth
        self.y = y * GameConstants.tileHeight
    end;

    update = function(self, dt)
        --
    end;

    draw = function(self)

    end;
}
