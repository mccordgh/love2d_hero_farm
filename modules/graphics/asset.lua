Asset = Class{
    init = function(self, name, path)
        self.name = name;
        self.path = path;
        self.width = GameConstants.TileWidth
        self.height = GameConstants.TileHeight

        self.img = love.graphics.newImage(path)
        -- self.sheet = new SpriteSheet(ImageLoader.loadImage(self.path));
        -- self.anim = {};
    end;

--   addAnimation(name, animation) {
--     self.anim[name] = animation;
--   }
}

-- TileAssets = Assets()