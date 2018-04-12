

function love.load()
  require('test_player')

  players = {}
  playerInit(300)

  createCard('test1', 3, 3, 3)
  createCard('test2', 5, 5, 5)

  width = love.graphics.getWidth()
  height = love.graphics.getHeight()
  love.window.setMode(width, height)
end


function love.update(dt)
  love.window.setTitle(tostring(#players[1].deck) .. '-' .. tostring(#players[1].hand))
end


function love.draw()
end


function love.keypressed(key, scancode, isrepeat)
  if key == 'space' then
    playerDrawCard()
  end
end
