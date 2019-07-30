require('modules.graphics.asset_manager')
require('modules.input.key_manager')
require('modules.states.state_manager')
require('modules.tiles.tile_manager')
require('modules.tiles.tile_map_manager')
require('modules.worlds.world_manager')

HC = require("libraries.HC")

Camera = require("libraries.hump.camera")
-- require('debug.debugger')

Handler = Class{
    init = function(self, game)
        self.game = game

        -- self.debugger = Debugger(self)
        self.camera = Camera.new()
        self.hc = HC.new(GameConstants.TileWidth * 4)

        self.assetManager = AssetManager(self)
        self.keyManager = KeyManager(self)
        self.stateManager = StateManager(self)
        self.tileManager = TileManager(self)
        self.tileMapManager = TileMapManager(self)
        self.worldManager = WorldManager(self)
    end;

    event = function(self, event)
        --
    end;

    mousepressed = function(self, x, y, button, isTouch)
        -- self.mouseManager.mousePressed(x, y, button, isTouch)
        -- mouse_pressed = true
    end;

    mousereleased = function(self, x, y, button, isTouch)
        -- self.mouseManager.mouseReleased(x, y, button, isTouch)
    end;

    -- getDebugger = function(self)
    --     return self.debugger
    -- end;

    getAssetManager = function(self)
        return self.assetManager
    end;

    getCamera = function(self)
        return self.camera
    end;

    getHC = function(self)
        return self.hc
    end;

    getKeyManager = function(self)
        return self.keyManager
    end;

    getStateManager = function(self)
        return self.stateManager
    end;

    getTileManager = function(self)
        return self.tileManager
    end;

    getTileMapManager = function(self)
        return self.tileMapManager
    end;

    getWorldManager = function(self)
        return self.worldManager
    end;
}

