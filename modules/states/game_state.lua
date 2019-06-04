local gameState = {}

gameState.y = 0

function gameState.init()
    -- this.managerHandler = managerHandler;
    -- this.world = world;
end

function gameState.update(deltaTime)
    gameState.y = gameState.y + 1
    -- self.world.tick(deltaTime);
end

function gameState.draw()
    love.graphics.print("HELLO WORLD!!!", 20, gameState.y)
    -- self.world.render(graphics);
end

-- function gameState.getManagerHandler()
--     -- return this.managerHandler;
-- end

-- getWorld() {
--     return this.world;
-- }

-- setWorld(world) {
--     this.world = world;
-- }

return gameState
