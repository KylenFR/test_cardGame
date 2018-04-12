

function playerInit(deck, lifepoint)
  player1 = {}

  player1.deck = deck
  player1.hand = {}
  player1.board = {}
  player1.graveyard = {}

  player1.life = lifepoint

end


function playerDrawCard()
  local cardIndex = love.math.random(1, #player1.deck)
  local cardDrawn = player1.deck[cardIndex]

  table.insert(player1.hand, cardDrawn)
  table.remove(player1.deck, cardIndex)
end
