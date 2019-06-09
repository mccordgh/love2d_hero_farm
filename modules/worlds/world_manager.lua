require('modules.entities.entity_manager')
require('modules.worlds.world_one')

WorldManager = Class{
    init = function(self, handler)
        self.handler = handler

        self.world = WorldOne(handler, EntityManager(handler))
    end;

    getWorld = function(self)
        return self.world
    end;
}