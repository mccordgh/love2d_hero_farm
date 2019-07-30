require("modules.entities.creatures.creature")

Barn = Class {
    __includes = Creature,

    init = function(self, handler, x, y)
        Creature:init(handler, x, y)

        self.handler = handler
        self.asset = self.handler:getAssetManager():loadAsset('barn', 'assets/barn.png')
        self.type = "barn"
        self.x = x
        self.y = y
        self.width = 128
        self.height = 96
    end;

    draw = function(self)
        local x = self.x * GameConstants.TileWidth
        local y = self.y * GameConstants.TileHeight

        love.graphics.draw(self.asset.img, x, y, 0)
    end;

    getInput = function(self, dt)
        self.xMove = 0;
        self.yMove = 0;

        local keys = self.handler:getKeyManager()

        if (keys:getUpKey()) then
            self.yMove = -self.speed * dt
        end

        if (keys:getDownKey()) then
            self.yMove = self.speed * dt;
        end

        if (keys:getLeftKey()) then
            self.xMove = -self.speed * dt;
        end

        if (keys:getRightKey()) then
            self.xMove = self.speed * dt;
        end
    end;
}
