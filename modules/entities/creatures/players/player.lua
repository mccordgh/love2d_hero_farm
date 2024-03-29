require("modules.entities.creatures.creature")

Player = Class {
    __includes = Creature,

    init = function(self, handler, x, y, width, height)
        Creature:init(handler, x, y, width, height)

        self.asset = handler:getAssetManager():loadAsset('player', 'assets/player/player.png')
        self.handler = handler
        self.type = "player"
        self.x = x
        self.y = y
        self.width = width
        self.height = height
        self.xMove = 0
        self.yMove = 0
        self.speed = 8

        self.bounds = self.handler:getHC():rectangle(self.x, self.y, self.width, self.height)
    end;

    update = function(self, dt)
        self:getInput(dt)
        self:move()

        self.handler:getCamera():lookAt(self.x * GameConstants.TileWidth, self.y * GameConstants.TileHeight)
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
