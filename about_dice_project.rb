require File.expand_path(File.dirname(__FILE__) + '/neo')

# Implement a DiceSet Class here:
#
# class DiceSet
#   code ...
# end

# class DiceSet
#   def roll(number_of_rolls)
#     Array.new(number_of_rolls) { rand(1..6) }
#   end
# end

class DiceSet
  attr_reader :values

  # def values ## reader method - This does  what line 16 (attr_reader :values) does
  #   @values 
  # end

  def roll(number_of_dice)
    @values = Array.new(number_of_dice) { rand(1..6)} ## This does what it is intended to do.
  end
end

class AboutDiceProject < Neo::Koan
  def test_can_create_a_dice_set
    dice = DiceSet.new
    assert_not_nil dice
  end

  def test_rolling_the_dice_returns_a_set_of_integers_between_1_and_6
    dice = DiceSet.new

    dice.roll(5)
    assert dice.values.is_a?(Array), "should be an array"
    assert_equal 5, dice.values.size
    dice.values.each do |value|
      assert value >= 1 && value <= 6, "value #{value} must be between 1 and 6"
    end
  end

  def test_dice_values_do_not_change_unless_explicitly_rolled
    dice = DiceSet.new
    dice.roll(5)
    first_time = dice.values
    second_time = dice.values
    assert_equal first_time, second_time
  end

  def test_dice_values_should_change_between_rolls
    dice = DiceSet.new

    dice.roll(5)                ## Should yield an array that fits this format: [x,x,x,x,x]
    first_time = dice.values

    dice.roll(5)
    second_time = dice.values   ## Should also yield an array that fits the format above: [x,x,x,x,x] but should be different because it's random.

    assert_not_equal first_time, second_time,
      "Two rolls should not be equal"

    # THINK ABOUT IT:
    #
    # If the rolls are random, then it is possible (although not
    # likely) that two consecutive rolls are equal.  What would be a
    # better way to test this?
  end

  def test_you_can_roll_different_numbers_of_dice
    dice = DiceSet.new

    dice.roll(3)
    assert_equal 3, dice.values.size

    dice.roll(1)
    assert_equal 1, dice.values.size
  end

end
