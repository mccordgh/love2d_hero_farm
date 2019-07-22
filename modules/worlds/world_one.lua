WorldOne = Class{
    init = function(self, handler, entityManager)
        self.handler = handler
        self.entityManager = entityManager

        self:initialize()
    end;

    initialize = function(self)
        self.handler:getTileMapManager():loadTiledMap("assets.tile_maps.bad_map")
        -- self.tileMap = self.createTileMap()
        -- self.entityManager:createLevelCards()
    end;

    -- createTileMap = function()
    --     -- 10 across, 16 down
    --     local map = {}

    --     for y = 1, GameConstants.VerticalTileCount, 1
    --     do
    --         for x = 1, GameConstants.HorizontalTileCount, 1
    --         do
    --             if (map[y] == nil) then
    --                 map[y] = {}
    --             end

    --             if (x == 1 or x == GameConstants.HorizontalTileCount) then
    --                 map[y][x] = 2
    --             else
    --                 map[y][x] = 1
    --             end
    --         end
    --     end

    --     return map
    -- end;

    update = function(self, dt)
        self.entityManager:update(dt)
    end;

    draw = function(self)
        -- draw tiles
        -- self:drawTiles()
        self:drawMapTiles()

        -- draw entities
        self.entityManager:draw()
    end;

    drawMapTiles = function(self)
        self.handler:getTileMapManager():drawTiledMap()
    end;

    -- drawTiles = function(self)
    --     -- 10 across, 16 down
    --     for y = 0, GameConstants.VerticalTileCount - 1, 1
    --     do
    --         for x = 0, GameConstants.HorizontalTileCount - 1, 1
    --         do
    --             local tiles = self.handler:getTileManager():getTiles()
    --             local currentTileId = self.tileMap[y + 1][x + 1]

    --             local x = (x * GameConstants.TileWidth)
    --             local y = (y * GameConstants.TileHeight)

    --             tiles[currentTileId]:draw(x, y)
    --         end
    --     end
    -- end
}
