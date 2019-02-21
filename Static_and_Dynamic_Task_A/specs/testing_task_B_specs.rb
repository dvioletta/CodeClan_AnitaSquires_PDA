require("minitest/autorun")
require('minitest/rg')
require_relative("../testing_task_B")
require_relative("../card")

class CardGameTest < MiniTest::Test

    def setup
      #write out class test functions
      @card1 = Card.new("spades", 7)
      @card2 = Card.new("hearts", 9)
      @card3 = Card.new("ace_space", 1)
      #create an array with the two cards inside
      @game = [@card1, @card2, @card3]
      @cardgame1 = CardGame.new([@card1, @card2])
    end

      def test_checkforAce()
        result = CardGame.checkforAce(@card2)
        assert_equal(false, result)
      end

    def test_highest_card__card2() #card can be replaced by number
      result = CardGame.highest_card(@card1, @card2)
      assert_equal(result, @card2.suit)
      end

    def test_highest_card__card1()
        result = CardGame.highest_card(@card1, @card3)
        assert_equal(result, @card1.suit)
        end


    def test_CardGame_card_total()
      result = CardGame.cards_total(@game)
      expected = "You have a total of 17"
      assert_equal(expected, result)
      end

end
