Entity = Class {
    init = function(self, handler, x, y, width, height)
        self.handler = handler
        self.x = x
        self.y = y
        self.width = width
        self.height = height
    end;

    update = function(self, deltaTime)
        --
    end;

    draw = function(self)
        local x = self.x * GameConstants.TileWidth
        local y = self.y * GameConstants.TileHeight

        love.graphics.draw(self.asset.img, x, y, 0, GameConstants.TileScale, GameConstants.TileScale)
    end;
}
