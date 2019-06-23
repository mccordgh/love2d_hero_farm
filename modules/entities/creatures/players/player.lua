require("modules.entities.creatures.creature")

Player = Class {
    __includes = Creature,

    init = function(self, handler, x, y, width, height)
        local asset = handler:getAssetManager():loadAsset('player', 'assets/player/player.png')

        Creature:init(handler, x, y, width, height, asset)

        self.asset = asset
        self.handler = handler
        self.x = x
        self.y = y
        self.width = width
        self.height = height
    end;
}
