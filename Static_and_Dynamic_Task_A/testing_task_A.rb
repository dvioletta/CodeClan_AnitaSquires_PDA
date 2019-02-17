### Testing task 2 code:

# Carry out dynamic testing on the code below.
# Correct the errors below that you spotted in task 1.

require_relative('card.rb')
class CardGame

  #no def initialize or attr_reader or accessor


  def checkforAce(card)
    if card.value = 1 #this should be a double ==
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2) #The function name here is wrong should be def, also missing comma between the arguments

  if card1.value > card2.value
    return card.name #Variable here unknown
  else
    card2 #Variable here not same as other return
  end
end
end #extra unneeded end here

def self.cards_total(cards)
  total # is not a method that can be called due to not being set up so has no point here
  for card in cards
    total += card.value
    return "You have a total of" + total #This line will only return the string because total has no meaning
  end
end
