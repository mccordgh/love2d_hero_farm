require("modules.entities.entity")

Creature = Class {
    __includes = Entity,

    init = function(self, handler, x, y, width, height)
        Entity:init(handler, x, y, width, height)

        self.handler = handler
        self.x = x
        self.y = y
        self.width = width
        self.height = height
        self.xMove = 0
        self.yMove = 0
    end;

    move = function(self)
        self.x = self.x + self.xMove
        self.y = self.y + self.yMove
    end
}
