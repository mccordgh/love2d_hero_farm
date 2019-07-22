require("modules.entities.creatures.players.player")
require("modules.entities.items.card")

EntityManager = Class{
    init = function(self, handler)
        self.handler = handler
        self.entities = {}

        self:createPlayer(handler)
    end;

    createPlayer = function(self, handler)
        local x = (GameConstants.HorizontalTileCount / 2) - 0.5
        local y = GameConstants.VerticalTileCount - 4

        local player = Player(handler, x, y, GameConstants.PlayerWidth, GameConstants.PlayerHeight)

        table.insert(self.entities, player)
    end;

    -- createLevelCards = function(self)
    --     for y = 0, GameConstants.VerticalTileCount - (GameConstants.VerticalTileCount / 2) - 1, 1
    --     do
    --         for x = 1, GameConstants.HorizontalTileCount - 2, 1
    --         do
    --             local card = Card(self.handler, x, y, GameConstants.TileWidth, GameConstants.TileHeight)

    --             table.insert(self.entities, card)
    --         end
    --     end
    -- end;

    update = function(self, dt)
        for k, entity in ipairs(self.entities)
        do
            entity:update(dt)
        end
    end;

    draw = function(self)
        for k, entity in ipairs(self.entities)
        do
            entity:draw()
        end
    end;
}
