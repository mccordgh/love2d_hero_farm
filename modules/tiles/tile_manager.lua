require("modules.tiles.tilesets.ground.ground")
require("modules.tiles.tilesets.wall.wall")

TileManager = Class{
    init = function(self, handler)
        self.handler = handler

        self.tiles = self:createTiles()
    end;

    getTiles = function(self)
        return self.tiles
    end;

    createTiles = function(self)
        local tiles = {}

        tiles[1] = TileGround(self.handler, 1)
        tiles[2] = TileWall(self.handler, 2)

        return tiles
    end;
}