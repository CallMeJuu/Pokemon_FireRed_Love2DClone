
local gameplay = {}
local Gamestate = require("libs.gamestate")

function gameplay:enter()
    
end

function gameplay:update()
    
end

function gameplay:draw()

end

function gameplay:keypressed(key)
    if key == "escape" then
        local menu = require("src.screens.menu")
        Gamestate.switch(menu)
    end
end

return gameplay