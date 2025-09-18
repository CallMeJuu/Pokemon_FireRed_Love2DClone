
local Anim8 = require("libs.anim8")
local Player = {}

function Player.New(x, y)
    local player = {}
    player.x = x
    player.y = y
    player.speed = 150
end