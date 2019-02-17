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
      # game = [@card1, @card2]
      @cardgame1 = CardGame.new([@card1, @card2])
    end

      def test_checkforAce()
        assert_equal(1, @card3.value)
      end



    def test_highest_card() #card can be replaced by number
      #make a test that returns the highest number value in a two comparison set.
      #so if card1 is more than card2 on first loop return card1
      #however if card2 is more than card1 end loop return card2
      #may need two tests for this
      assert_equal(true, @cardgame1(card1.value))

      end

    #def test_CardGame_card_total()
      #make sure that the array is all added together.
      #This requires a class method to work correctly
      #may also need to include the total method as part of the formual
      #assert_equal(@cardgame1.total)
      #end

end
