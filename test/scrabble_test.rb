gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test

  attr_reader :scrabble

  def setup
    @scrabble = Scrabble.new
  end

  def test_class_exists
    assert_instance_of Scrabble, scrabble
  end

  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_a_word
    assert_equal 4, scrabble.score("anna")
    assert_equal 8, scrabble.score("word")
  end

  def test_it_can_score_an_empty_string
    assert_equal 0, scrabble.score("")
  end

  def test_it_can_score_nil
    assert_equal 0, scrabble.score(nil)
  end

  def test_it_scores_with_letter_multipliers
    assert_equal 9, scrabble.score_with_multipliers('hello', [1,2,1,1,1])
    assert_equal 18, scrabble.score_with_multipliers('hello', [1,2,1,1,1], 2)
  end

  def test_it_gives_10_point_bonus
    assert_equal 48, scrabble.score_with_multipliers('sparkle', [1,2,1,3,1,2,1], 2)
  end
end
