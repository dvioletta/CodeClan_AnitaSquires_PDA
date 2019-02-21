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

  def self.checkforAce(card)
    if card.value == 1
      return true
    else
      return false
    end
  end


  def self.highest_card(card1, card2)
  if card1.value > card2.value
    return card1.suit
  else
    return card2.suit
  end
  end



def self.cards_total(cards)
total = 0
  for card in cards
    total += card.value

  end
  return "You have a total of " + total.to_s
end

end
