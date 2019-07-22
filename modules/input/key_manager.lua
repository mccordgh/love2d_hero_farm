KeyManager = Class {
    init = function(self, handler, x, y, width, height)
        local asset = handler:getAssetManager():loadAsset('player', 'assets/player/player.png')

        self.keys = {}

        self:initKeys()
    end;

    initKeys = function(self)
        self.keys["escape"] = false
        self.keys["up"] = false
        self.keys["down"] = false
        self.keys["left"] = false
        self.keys["right"] = false
    end;

    keyPressed = function(self, key, scan_code, is_repeat)
        self.keys[key] = true
    end;

    keyReleased = function(self, key, scan_code, is_repeat)
        self.keys[key] = false
    end;

    getUpKey = function(self)
        return self.keys["up"]
    end;

    getDownKey = function(self)
        return self.keys["down"]
    end;

    getLeftKey = function(self)
        return self.keys["left"]
    end;

    getRightKey = function(self)
        return self.keys["right"]
    end;

    getEscapeKey = function(self)
        return self.keys["escape"]
    end;
}
