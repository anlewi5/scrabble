gem 'minitest'
require_relative '../lib/game_reader'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class GameReaderTest < Minitest::Test

  attr_reader :game_reader

  def setup
    @game_reader = GameReader.new
  end

  def test_class_exists
    assert_instance_of GameReader, game_reader
  end

end
