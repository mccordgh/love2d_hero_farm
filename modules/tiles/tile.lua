Tile = Class{
    init = function(self, handler, id, asset)
        self.handler = handler
        self.id = id
        self.asset = asset;

        self.isSolid = false;
    end;

    getIsSolid = function()
        return self.isSolid
    end;

    getId = function()
        return self.id
    end;

    update = function(self)
        --
    end;

    draw = function(self, x, y)
        love.graphics.draw(self.asset.img, x, y, 0, GameConstants.TileScale, GameConstants.TileScale)
    end;
}