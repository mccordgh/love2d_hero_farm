require("modules.entities.creatures.players.player")

EntityManager = Class{
    init = function(self, handler)
        self.handler = handler
        self.player = Player(handler, 4 * GameConstants.TileWidth, 4 * GameConstants.TileHeight, GameConstants.PlayerWidth, GameConstants.PlayerHeight)
        self.entities = { self.player }
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
