require("modules.tiles.tile")

TileWall = Class{
    __includes = Tile,

    init = function(self, handler, id)
        local asset = handler:getAssetManager():loadAsset('wall', 'assets/tiles/walls/wall.png')

        Tile:init(handler, id, asset)

        self.handler = handler
        self.id = id
        self.asset = asset
    end;
}