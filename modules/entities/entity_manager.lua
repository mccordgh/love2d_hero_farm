require("modules.entities.creatures.players.player")

EntityManager = Class{
    init = function(self, handler)
        self.handler = handler
        self.player = self.createPlayer(handler);
        self.entities = { self.player }
    end;

    createPlayer = function(handler)
        local px = ((GameConstants.HorizontalTileCount * GameConstants.TileWidth) / 2) - (GameConstants.PlayerWidth / 2)
        local py = (GameConstants.VerticalTileCount * GameConstants.TileHeight) - (GameConstants.TileHeight / 2) - GameConstants.PlayerHeight

        return Player(handler, px, py, GameConstants.PlayerWidth, GameConstants.PlayerHeight)
    end;

    update = function(self, deltaTime)
        for k, entity in ipairs(self.entities)
        do
            entity:update()
        end
    end;

    draw = function(self)
        for k, entity in ipairs(self.entities)
        do
            entity:draw()
        end
    end;
}
