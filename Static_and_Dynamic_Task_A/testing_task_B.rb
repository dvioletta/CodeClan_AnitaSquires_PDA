### Testing task 2 code:

# Carry out dynamic testing on the code below.
# Correct the errors below that you spotted in task 1.

# class Card
#   attr_reader :suit, :value
#
# def initialize(suit, value)
#   @suit = suit
#   @value = value;
# end

require_relative("./card")
class CardGame

attr_accessor :cards

def initialize(cards)
  @cards = cards
end

  def checkforAce(card)
    if card.value = 1
      return true
    else
      return false
    end
  end


  def highest_card(card1, card2)
  if card1.value > card2.value
    return card1.value
  else
    card2.value
  end
  end



# def self.cards_total(cards)
#need to make sure total has a meaning
total
#   for card in cards
#     total += card.value
#     return "You have a total of" + total
#   end
# end

end
