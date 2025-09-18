local sunscreen = require "libs.sunscreen"
local gamestate = require "libs.gamestate"

function love.load()
    love.graphics.setDefaultFilter("nearest", "nearest")
    sunscreen:init({
        gameWidth = 240,
        gameHeight = 160,
        mode = "fit"
    })
end

function love.update(dt)
    
end

function love.draw()
    sunscreen:apply()
end

function love.resize(w, h)
    sunscreen:onResize(w, h)
end