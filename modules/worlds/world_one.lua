WorldOne = Class{
    init = function(self, handler, entityManager)
        self.handler = handler
        self.entityManager = entityManager

        self:initialize()
    end;

    initialize = function(self)
        self.tileMap = self.createTileMap()
        self.entityManager:createLevelCards()
    end;

    createTileMap = function()
        -- 10 across, 16 down
        local map = {
            { 2, 1, 1, 1, 1, 1, 1, 1, 1, 2 },
            { 2, 1, 1, 1, 1, 1, 1, 1, 1, 2 },
            { 2, 1, 1, 1, 1, 1, 1, 1, 1, 2 },
            { 2, 1, 1, 1, 1, 1, 1, 1, 1, 2 },
            { 2, 1, 1, 1, 1, 1, 1, 1, 1, 2 },
            { 2, 1, 1, 1, 1, 1, 1, 1, 1, 2 },
            { 2, 1, 1, 1, 1, 1, 1, 1, 1, 2 },
            { 2, 1, 1, 1, 1, 1, 1, 1, 1, 2 },
            { 2, 1, 1, 1, 1, 1, 1, 1, 1, 2 },
            { 2, 1, 1, 1, 1, 1, 1, 1, 1, 2 },
            { 2, 1, 1, 1, 1, 1, 1, 1, 1, 2 },
            { 2, 1, 1, 1, 1, 1, 1, 1, 1, 2 },
            { 2, 1, 1, 1, 1, 1, 1, 1, 1, 2 },
            { 2, 1, 1, 1, 1, 1, 1, 1, 1, 2 },
            { 2, 1, 1, 1, 1, 1, 1, 1, 1, 2 },
            { 2, 1, 1, 1, 1, 1, 1, 1, 1, 2 },
        }

        return map
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
        -- 10 across, 16 down
        for y = 0, GameConstants.VerticalTileCount - 1, 1
        do
            for x = 0, GameConstants.HorizontalTileCount - 1, 1
            do
                self.handler:getTileManager():getTiles()[self.tileMap[y + 1][x + 1]]:draw(x * GameConstants.TileWidth, y * GameConstants.TileHeight)
            end
        end
    end
}
