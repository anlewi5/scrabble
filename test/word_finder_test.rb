gem 'minitest'
require_relative '../lib/word_finder'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class WordFinderTest < Minitest::Test

  attr_reader :word_finder

  def setup
    @word_finder = WordFinder.new
  end

  def test_class_exists
    assert_instance_of WordFinder, word_finder
  end

end
