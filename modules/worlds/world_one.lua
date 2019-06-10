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

        -- draw vertical borders
        self:drawVerticalBorders()

        -- draw horizontal borders
        self:drawHorizontalBorders()

        -- draw entities
        self.entityManager:draw()
    end;

    drawVerticalBorders = function(self)
        love.graphics.setColor(0.6, 0.6, 0.6, 1)

        for y = 0, GameConstants.VerticalTileCount - 1, 1
        do
            love.graphics.rectangle("fill", 0, y * GameConstants.TileWidth, GameConstants.TileWidth, GameConstants.TileHeight)
            love.graphics.rectangle("fill", (GameConstants.HorizontalTileCount - 1) * GameConstants.TileWidth, y * GameConstants.TileHeight, GameConstants.TileWidth, GameConstants.TileHeight)
        end
    end;

    drawHorizontalBorders = function(self)
        love.graphics.setColor(0.3, 0.3, 0.3, 1)

        for x = 1, GameConstants.HorizontalTileCount - 2, 1
        do
            love.graphics.rectangle("fill", x * GameConstants.TileWidth, 0, GameConstants.TileWidth, GameConstants.TileHeight)
            love.graphics.rectangle("fill", x * GameConstants.TileWidth, (GameConstants.VerticalTileCount - 1) * GameConstants.TileHeight, GameConstants.TileWidth, GameConstants.TileHeight)
        end
    end;

    drawTiles = function(self)
        love.graphics.setColor(1, 1, 1, 1)

        for y = 1, GameConstants.VerticalTileCount - 2, 1
        do
            for x = 1, GameConstants.HorizontalTileCount - 2, 1
            do
                love.graphics.rectangle("line", x * GameConstants.TileWidth, y * GameConstants.TileHeight, GameConstants.TileWidth, GameConstants.TileHeight)
            end
        end
    end
}
