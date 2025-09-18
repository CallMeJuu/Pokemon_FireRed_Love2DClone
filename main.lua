local sunscreen = require "libs.sunscreen"
local gamestate = require "libs.gamestate"

local screens = {
    startup = require("src.screens.startup"),
    menu = require("src.screens.menu"),
    gameplay = require("src.screens.gameplay")
}

function love.load()
    love.graphics.setDefaultFilter("nearest", "nearest")
    sunscreen:init({
        gameWidth = 240,
        gameHeight = 160,
        mode = "fit"
    })

    gamestate.registerEvents()
    gamestate.switch(screens.menu)
end

function love.update(dt)
    
end

function love.draw()
    sunscreen:apply()
end

function love.resize(w, h)
    sunscreen:onResize(w, h)
end