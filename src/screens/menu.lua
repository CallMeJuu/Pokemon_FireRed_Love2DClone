
local menu = {}
local Gamestate = require("libs.gamestate")

function menu:enter()
    
end

function menu:update(dt)
    
end

function menu:draw()
    love.graphics.setColor(1, 1, 1)
    love.graphics.printf("Main Menu", 0, 40, 240, "center")
    love.graphics.printf("Press Space to Play", 0, 80, 240, "center")
end

function menu:keypressed(key)
    if key == "space" then
        local gameplay = require("src.screens.gameplay")
        Gamestate.switch(gameplay)
    elseif key == "escape" then
        love.event.quit()
    end
end

return menu