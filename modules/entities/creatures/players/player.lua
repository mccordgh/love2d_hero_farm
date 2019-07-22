require("modules.entities.creatures.creature")

Player = Class {
    __includes = Creature,

    init = function(self, handler, x, y, width, height)
        local asset = handler:getAssetManager():loadAsset('player', 'assets/player/player.png')

        Creature:init(handler, x, y, width, height, asset)

        self.asset = asset
        self.handler = handler
        self.type = "player"
        self.x = x
        self.y = y
        self.width = width
        self.height = height
        self.xMove = 0
        self.yMove = 0
        self.speed = 1
    end;

    update = function(self, dt)
        self:getInput(dt)
        self:move()
    end;

    draw = function(self)
        local x = self.x * GameConstants.TileWidth
        local y = self.y * GameConstants.TileHeight

        love.graphics.draw(self.asset.img, x, y, 0, GameConstants.TileScale, GameConstants.TileScale)
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
