require("modules.entities.entity")

Item = Class{
    __includes = Entity,

    init = function(self, handler, x, y, width, height)
        Entity:init(self, handler, x, y, width, height)

        self.handler = handler
        self.x = x
        self.y = y
        self.width = width
        self.height = height
    end;


}