gem 'minitest'
require_relative '../lib/word_list'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class WordListTest < Minitest::Test

  attr_reader :word_list

  def setup
    @word_list = WordList.new
  end

  def test_class_exists
    assert_instance_of WordList, word_list
  end

end
