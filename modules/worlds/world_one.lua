
WorldOne = Class{
    init = function(self, handler, entityManager)
        self.handler = handler
        self.entityManager = entityManager

        self:initialize()
    end;

    initialize = function(self)

    end;

    update = function(self, deltaTime)
        self.entityManager:update(deltaTime)
    end;

    draw = function(self)
        -- draw background
        self:drawTiles()

        -- draw entities
        self.entityManager:draw()
    end;

    drawTiles = function(self)
        --
    end
}
