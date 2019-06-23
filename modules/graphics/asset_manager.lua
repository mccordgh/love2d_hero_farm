require("modules.graphics.asset")

AssetManager = Class{
    init = function(self)
        self.assets = {}
    end;

    getAssets = function(self)
        return self.assets
    end;

    loadAsset = function(self, name, path)
        local asset = Asset(name, path)

        if (self.assets[name] == nil) then
            -- only add an asset if it doesnt already exist
            self.assets[name] = asset
        end


        return asset
    end;

    clearAssets = function(self)
        self.assets = {}
    end;
}