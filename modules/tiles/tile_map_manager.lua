TileMapManager = Class{
    init = function(self, path)
        self.map = nil
    end;

    loadTiledMap = function(self, path)
        local map = require(path)

        map.quads = {}
        map.tileset = map.tilesets[1]
        map.image = love.graphics.newImage(map.tileset.image)

        for y = 0, (map.tileset.imageheight / map.tileset.tileheight) - 1
        do
            for x = 0, (map.tileset.imagewidth / map.tileset.tilewidth) - 1
            do
                local quad = love.graphics.newQuad(
                    x * map.tileset.tilewidth,
                    y * map.tileset.tileheight,
                    map.tileset.tilewidth,
                    map.tileset.tileheight,
                    map.tileset.imagewidth,
                    map.tileset.imageheight
                )

                table.insert(map.quads, quad)
            end
        end

        self.map = map
    end;

    getTiledMap = function(self)
        return self.map
    end;

    drawTiledMap = function(self)
        local map = self.map

        for i, layer in ipairs(map.layers)
        do
            for y = 0, layer.height - 1
            do
                for x = 0, layer.width - 1
                do
                    local index = (x + y * layer.width) + 1
                    local tile_id = layer.data[index]

                    if tile_id ~= 0 then
                        local quad = map.quads[tile_id]
                        local xx = x * map.tileset.tilewidth
                        local yy = y * map.tileset.tileheight

                        love.graphics.draw(map.image, quad, xx, yy)
                    end
                end
            end
        end
    end;
}
