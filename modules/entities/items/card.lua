require("modules.entities.items.item")

Card = Class{
    __includes = Item,

    init = function(self, handler, x, y, width, height)
        local asset = handler:getAssetManager():loadAsset('card', 'assets/cards/card.png')

        Item:init(handler, x, y, width, height, asset)

        self.asset = asset
        self.handler = handler
        self.x = x
        self.y = y
        self.width = width
        self.height = height
    end;
}