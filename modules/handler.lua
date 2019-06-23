require('modules.graphics.asset_manager')
require('modules.states.state_manager')
require('modules.tiles.tile_manager')
require('modules.worlds.world_manager')
-- require('debug.debugger')

handler = Class{
    init = function(self, game)
        self.game = game

        -- self.debugger = Debugger(self)

        self.assetManager = AssetManager(self)
        self.stateManager = StateManager(self)
        self.tileManager = TileManager(self)
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

    getStateManager = function(self)
        return self.stateManager
    end;

    getTileManager = function(self)
        return self.tileManager
    end;

    getWorldManager = function(self)
        return self.worldManager
    end;
}

