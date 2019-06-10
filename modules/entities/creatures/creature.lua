require("modules.entities.entity")

Creature = Class {
    __includes = Entity,

    init = function(self, handler, x, y)
        Entity:init(handler, x, y)

        self.handler = handler
        self.x = x * GameConstants.tileWidth
        self.y = y * GameConstants.tileHeight
    end;

    update = function(self, deltaTime)
        --
    end;

    draw = function(self)
        --
    end;
}
