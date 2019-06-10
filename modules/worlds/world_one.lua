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

        -- draw horizontal borders
        self:drawHorizontalBorders()

        -- draw vertical borders
        self:drawVerticalBorders()

        -- draw entities
        self.entityManager:draw()
    end;

    drawHorizontalBorders = function(self)
        love.graphics.setColor(0.6, 0.6, 0.6, 1)

        for y = 0, GameConstants.verticalTileCount - 1, 1
        do
            love.graphics.rectangle("fill", 0, y * GameConstants.tileWidth, GameConstants.tileSize, GameConstants.tileSize)
            love.graphics.rectangle("fill", (GameConstants.horizontalTileCount - 1) * GameConstants.tileWidth, y * GameConstants.tileHeight, GameConstants.tileSize, GameConstants.tileSize)
        end
    end;

    drawVerticalBorders = function(self)
        love.graphics.setColor(0.3, 0.3, 0.3, 1)

        for x = 1, GameConstants.horizontalTileCount - 1, 1
        do
            love.graphics.rectangle("fill", x * GameConstants.tileWidth, 0, GameConstants.tileSize, GameConstants.tileSize)
            love.graphics.rectangle("fill", x * GameConstants.tileWidth, (GameConstants.verticalTileCount - 1) * GameConstants.tileHeight, GameConstants.tileSize, GameConstants.tileSize)
        end
    end;

    drawTiles = function(self)
        love.graphics.setColor(1, 1, 1, 1)

        for y = 1, GameConstants.verticalTileCount - 2, 1
        do
            for x = 1, GameConstants.horizontalTileCount - 2, 1
            do
                love.graphics.rectangle("line", x * GameConstants.tileWidth, y * GameConstants.tileHeight, GameConstants.tileSize, GameConstants.tileSize)
            end
        end
    end
}
