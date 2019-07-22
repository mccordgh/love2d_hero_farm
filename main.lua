-- DEVICE	            PORTRAIT DIMENSIONS	    LANDSCAPE DIMENSIONS
-- 12.9″ iPad Pro	    2048px × 2732px	        2732px × 2048px
-- 10.5″ iPad Pro   	1668px × 2224px	        2224px × 1668px
-- 9.7″ iPad    	    1536px × 2048px	        2048px × 1536px
-- 7.9″ iPad mini 4	    1536px × 2048px	        2048px × 1536px
-- iPhone XS Max    	1242px × 2688px	        2688px × 1242px
-- iPhone XS        	1125px × 2436px	        2436px × 1125px
-- iPhone XR	        828px × 1792px	        1792px × 828px
-- iPhone X	            1125px × 2436px	        2436px × 1125px
-- iPhone 8 Plus	    1242px × 2208px	        2208px × 1242px
-- iPhone 8	            750px × 1334px	        1334px × 750px
-- iPhone 7 Plus    	1242px × 2208px	        2208px × 1242px
-- iPhone 7	            750px × 1334px	        1334px × 750px
-- iPhone 6s Plus   	1242px × 2208px	        2208px × 1242px
-- iPhone 6s	        750px × 1334px	        1334px × 750px
-- iPhone SE	        640px × 1136px	        1136px × 640px

-- tile size 64x64
-- 9 across = 576 pixel screen width
-- 16 down = 1024
-- set screen size in conf.lua!

-- DEBUGGING Console => Ctrl/Shift + F8 // print("message")
-- https://github.com/Ranguna/LOVEDEBUG

require("libraries.lovedebug.lovedebug")
require("constants.game_constants")
require("modules.game")

local game = Game()

function love.update(dt)
    game:update(dt)
end

function love.draw()
    game:draw()
end

function love.keypressed(key, scan_code, is_repeat)
    game:keyPressed(key, scan_code, is_repeat)
end

function love.keyreleased(key, scan_code, is_repeat)
    game:keyReleased(key, scan_code, is_repeat)
end

function love.mousepressed(x, y, button, isTouch)
    game:mousepressed(x, y, button, isTouch)
end

function love.mousereleased(x, y, button, isTouch)
    game:mousereleased(x, y, button, isTouch)
end

function love.focus(focused)
    game:focus(focused)
end


