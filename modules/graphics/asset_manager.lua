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

        if (self.assets[name] ~= nil) then
            error("An asset named [" .. name .. "] already exists!")
        end

        self.assets[name] = asset

        return asset
    end;

    clearAssets = function(self)
        self.assets = {}
    end;
}