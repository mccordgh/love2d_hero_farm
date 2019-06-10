require("modules.entities.entity")

Creature = Class {
    __includes = Entity,

    init = function(self, handler, x, y)
        Entity:init(handler, x, y)

        self.handler = handler
        self.x = x
        self.y = y
    end;

    update = function(self, deltaTime)
        --
    end;

    draw = function(self)
        --
    end;
}
