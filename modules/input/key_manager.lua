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

        self.keys["w"] = false
        self.keys["s"] = false
        self.keys["a"] = false
        self.keys["d"] = false
    end;

    keyPressed = function(self, key, scan_code, is_repeat)
        self.keys[key] = true
    end;

    keyReleased = function(self, key, scan_code, is_repeat)
        self.keys[key] = false
    end;

    getUpKey = function(self)
        return self.keys["up"] or self.keys["w"]
    end;

    getDownKey = function(self)
        return self.keys["down"] or self.keys["s"]
    end;

    getLeftKey = function(self)
        return self.keys["left"] or self.keys["a"]
    end;

    getRightKey = function(self)
        return self.keys["right"] or self.keys["d"]
    end;

    getEscapeKey = function(self)
        return self.keys["escape"]
    end;
}
