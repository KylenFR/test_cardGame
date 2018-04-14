

function love.load()
  require('test_player')

  players = {}
  playerInit(3000)

  createCard('test1', 3, 3, 3)
  createCard('test2', 5, 5, 5)
  createCard('test3', 2, 78, 95)
  createCard('test4', 1, 5, 45)

  width = love.graphics.getWidth()
  height = love.graphics.getHeight()
  love.window.setMode(width, height)
end


function love.update(dt)
  love.window.setTitle(tostring(#players[1].deck) .. ' - ' .. tostring(#players[1].hand) .. ' - ' .. tostring(#players[1].board) .. ' - ' .. tostring(#players[1].graveyard)) --[[.. tostring(players[1].hand[#players[1].hand].name)]]--
end


function love.draw()
end


function love.keypressed(key, scancode, isrepeat)
  if key == 'space' then
    playerDrawCard()
  end

  if key == 'return' then
    playerSummonMonster(players[1].hand[1], 1)
  end

  if key == 'backspace' then
    playerKillMonster(players[1].board[1], 1)
  end
end
