require("modules.tiles.tile")

TileGround = Class{
    __includes = Tile,

    init = function(self, handler, id)
        local asset = handler:getAssetManager():loadAsset('ground', 'assets/tiles/ground/ground.png')

        Tile:init(handler, id, asset)

        self.handler = handler
        self.id = id
        self.asset = asset
    end;
}