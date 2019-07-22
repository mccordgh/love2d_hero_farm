require("modules.entities.creatures.players.player")
require("modules.entities.items.card")

EntityManager = Class{
    init = function(self, handler)
        self.handler = handler
        self.entities = {}

        self:createPlayer(handler)
    end;

    createPlayer = function(self, handler)
        local x = 20
        local y = 20

        local player = Player(handler, x, y, GameConstants.PlayerWidth, GameConstants.PlayerHeight)

        table.insert(self.entities, player)
    end;

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
