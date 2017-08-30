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
    skip
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end
end
