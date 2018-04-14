

function playerInit(lifepoint)
  player1 = {}

  player1.deck = {}
  player1.hand = {}
  player1.board = {}
  player1.graveyard = {}

  player1.life = lifepoint

  table.insert(players, player1)
end


function createCard(name, cost, att, def)

  card = {}

  card.name = name
  card.cost = cost
  card.att = att
  card.def = def

  table.insert(players[1].deck, card)
end


function playerDrawCard()
  local cardIndex = love.math.random(1, #players[1].deck)
  local cardDrawn = players[1].deck[cardIndex]

  table.insert(players[1].hand, cardDrawn)
  table.remove(players[1].deck, cardIndex)
end


function playerSummonMonster(monstre, monsterIndex)



  table.insert(players[1].board, monstre)
  table.remove(players[1].hand, monsterIndex)
end
